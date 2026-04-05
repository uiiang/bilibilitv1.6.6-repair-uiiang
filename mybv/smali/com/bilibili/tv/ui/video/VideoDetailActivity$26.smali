.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createSeasonsSectionView(Ljava/util/List;I)V
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
    .line 2862
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 2865
    instance-of v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v0, :cond_15

    .line 2866
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 2867
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v3, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->aForSeason(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2869
    :cond_15
    return-void
.end method
