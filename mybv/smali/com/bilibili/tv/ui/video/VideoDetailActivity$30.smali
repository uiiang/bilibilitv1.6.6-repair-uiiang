.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3111
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3190
    return-void
.end method

.method public onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3114
    if-nez p1, :cond_4

    .line 3186
    :goto_3
    return-void

    .line 3117
    :cond_4
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;
    invoke-static {v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;

    .line 3118
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v2, :cond_2a

    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->follow:I

    if-ne v2, v0, :cond_2a

    :goto_15
    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3202(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 3119
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 3120
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;Lcom/bilibili/tv/api/video/PgcInfo;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 3118
    :cond_2a
    const/4 v0, 0x0

    goto :goto_15
.end method
