.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$sorted:Ljava/util/List;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6015
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$sorted:Ljava/util/List;

    iput p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSection(I)V
    .locals 4

    .prologue
    .line 6018
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$sorted:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$total:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v1, v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->access$9400(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 6019
    return-void
.end method
