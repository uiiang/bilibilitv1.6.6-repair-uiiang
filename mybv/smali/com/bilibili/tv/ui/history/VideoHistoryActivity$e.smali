.class public final Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;
.super Lbl/vn;
.source "VideoHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/VideoHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 433
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 453
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v1

    if-nez v1, :cond_f

    .line 508
    :cond_e
    :goto_e
    return-void

    .line 456
    :cond_f
    if-eqz p1, :cond_104

    .line 457
    const-string v1, "cursor"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_e6

    .line 459
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const-string v3, "max"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorMax:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$802(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;J)J

    .line 460
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const-string v3, "view_at"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorViewAt:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$902(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;J)J

    .line 461
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const-string v3, "business"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorBusiness:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$1002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 467
    :goto_40
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_130

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_130

    move v1, v0

    .line 469
    :goto_4f
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_ed

    .line 470
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 471
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 472
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 473
    const-string v4, "cover"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 474
    const-string v4, "view_at"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    .line 475
    const-string v4, "progress"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 476
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 477
    const-string v4, "show_title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mShowTitle:Ljava/lang/String;

    .line 479
    const-string v4, "history"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 480
    if-eqz v4, :cond_d8

    .line 481
    const-string v5, "oid"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 482
    const-string v5, "business"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    .line 483
    const-string v4, "pgc"

    iget-object v5, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 484
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 485
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 486
    const-string v6, "season_id"

    const-string v7, "kid"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v0, "season"

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 492
    :cond_d8
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4f

    .line 464
    :cond_e6
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    goto/16 :goto_40

    .line 495
    :cond_ed
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 496
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;->a(Ljava/util/List;)V

    .line 503
    :cond_104
    :goto_104
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 504
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 505
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto/16 :goto_e

    .line 499
    :cond_130
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    goto :goto_104
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 431
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 443
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 444
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 448
    :cond_1d
    :goto_1d
    return-void

    .line 447
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    goto :goto_1d
.end method
