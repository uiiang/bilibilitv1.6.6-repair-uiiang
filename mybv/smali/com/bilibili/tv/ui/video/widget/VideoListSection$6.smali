.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 383
    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_ad

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v0

    if-eqz v0, :cond_ad

    if-eqz p1, :cond_ad

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v2

    .line 387
    const/4 v1, 0x1

    move v0, v2

    .line 390
    :goto_31
    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_5f

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v1

    if-eqz v1, :cond_5f

    if-eqz p1, :cond_5f

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v0

    .line 394
    :cond_5f
    if-nez v0, :cond_8b

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    if-lez v1, :cond_8b

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v1

    if-eqz v1, :cond_8b

    if-eqz p1, :cond_8b

    .line 395
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v0

    .line 398
    :cond_8b
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v1

    if-eqz v1, :cond_96

    if-eqz v0, :cond_96

    .line 406
    :cond_95
    :goto_95
    return-void

    .line 402
    :cond_96
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveFocusPositionByIndex(I)V
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;->onVideoClicked(Ljava/lang/Object;I)V

    goto :goto_95

    :cond_ad
    move v1, v2

    move v0, v2

    goto :goto_31
.end method
