.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcBySeasonId()V
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
    .line 1726
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1777
    return-void
.end method

.method public onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1730
    if-eqz p1, :cond_f

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1731
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1763
    :goto_19
    return-void

    .line 1743
    :cond_1a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;
    invoke-static {v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;

    .line 1744
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v2, :cond_46

    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->follow:I

    if-ne v2, v0, :cond_46

    :goto_2b
    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2502(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 1745
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 1747
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J

    .line 1748
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 1744
    :cond_46
    const/4 v0, 0x0

    goto :goto_2b
.end method
