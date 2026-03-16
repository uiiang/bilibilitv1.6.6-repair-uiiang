.class Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;
.super Lbl/vn;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_b

    .line 461
    :cond_a
    :goto_a
    return-void

    .line 420
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 422
    if-eqz p1, :cond_af

    .line 423
    const-string v0, "medias"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 424
    const-string v0, "info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 425
    if-eqz v2, :cond_af

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 427
    :goto_31
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_66

    .line 428
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 429
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 430
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 431
    const-string v7, "cover"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 432
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 433
    const-string v5, "\u756a\u5267"

    iput-object v5, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    .line 434
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 436
    :cond_66
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v10, :cond_a5

    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Ljava/util/List;)V

    .line 438
    if-eqz v3, :cond_8a

    .line 439
    const-string v0, "title"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    const-string v2, "media_count"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 441
    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v4, v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 447
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_a

    .line 448
    const-string v0, "media_count"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 449
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a()I

    move-result v2

    if-lt v2, v0, :cond_a

    .line 450
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    goto/16 :goto_a

    .line 444
    :cond_a5
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b(Ljava/util/List;)V

    goto :goto_8a

    .line 456
    :cond_af
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 457
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v10, :cond_a

    .line 458
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 459
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 470
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 471
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 478
    :cond_13
    :goto_13
    return-void

    .line 474
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 475
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 476
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->k()V

    goto :goto_13
.end method
