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
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 454
    const-string v0, "VideoHistoryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5386\u53f2\u8bb0\u5f55\u63a5\u53e3\u8fd4\u56de\u6570\u636e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    if-nez v0, :cond_27

    .line 516
    :cond_26
    :goto_26
    return-void

    .line 458
    :cond_27
    if-eqz p1, :cond_1ac

    .line 460
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_183

    .line 462
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const-string v3, "max"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorMax:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$802(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;J)J

    .line 463
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const-string v3, "view_at"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorViewAt:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$902(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;J)J

    .line 464
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const-string v3, "business"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorBusiness:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$1002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 466
    const-string v0, "VideoHistoryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor\u4fe1\u606f: max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorMax:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$800(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view_at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorViewAt:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$900(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", business="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorBusiness:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$1000(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_96
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 473
    const-string v3, "VideoHistoryActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list\u6570\u7ec4\u5927\u5c0f: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_191

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_b3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v2, :cond_1d8

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d8

    .line 475
    :goto_c6
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_195

    .line 476
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 477
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 478
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 479
    const-string v4, "cover"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 480
    const-string v4, "view_at"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    .line 481
    const-string v4, "progress"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 482
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 483
    const-string v4, "show_title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mShowTitle:Ljava/lang/String;

    .line 485
    const-string v4, "history"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 486
    if-eqz v4, :cond_14f

    .line 487
    const-string v5, "oid"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 488
    const-string v5, "business"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    .line 489
    const-string v4, "pgc"

    iget-object v5, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14f

    .line 490
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 491
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 492
    const-string v6, "season_id"

    const-string v7, "kid"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v0, "season"

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 498
    :cond_14f
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v0, "VideoHistoryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6dfb\u52a0\u5386\u53f2\u8bb0\u5f55: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", avid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c6

    .line 468
    :cond_183
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 469
    const-string v0, "VideoHistoryActivity"

    const-string v2, "cursor\u4e3anull\uff0c\u6ca1\u6709\u66f4\u591a\u6570\u636e"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_96

    .line 473
    :cond_191
    const-string v0, "null"

    goto/16 :goto_b3

    .line 502
    :cond_195
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    if-eqz v0, :cond_1ac

    .line 503
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;->a(Ljava/util/List;)V

    .line 511
    :cond_1ac
    :goto_1ac
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto/16 :goto_26

    .line 506
    :cond_1d8
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # setter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z

    .line 507
    const-string v0, "VideoHistoryActivity"

    const-string v1, "list\u4e3a\u7a7a\u6216null\uff0c\u6ca1\u6709\u66f4\u591a\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac
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
    const-string v0, "VideoHistoryActivity"

    const-string v1, "\u52a0\u8f7d\u5386\u53f2\u8bb0\u5f55\u5931\u8d25"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 445
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_25

    .line 449
    :cond_24
    :goto_24
    return-void

    .line 448
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    goto :goto_24
.end method
