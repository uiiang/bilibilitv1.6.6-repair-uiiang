.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V
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
    .line 4450
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 4453
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_19

    .line 4454
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4455
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 4457
    :cond_19
    return-void
.end method
