.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;
.super Lbl/vn;
.source "AuthSpaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 363
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_12

    .line 445
    :cond_11
    :goto_11
    return-void

    .line 402
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a(Z)V

    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v2

    .line 404
    if-nez v2, :cond_22

    .line 405
    invoke-static {}, Lbl/bbi;->a()V

    .line 407
    :cond_22
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->e:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$900(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 409
    if-nez v0, :cond_30

    .line 410
    invoke-static {}, Lbl/bbi;->a()V

    .line 412
    :cond_30
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->i:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;Z)Z

    .line 414
    if-eqz p1, :cond_46

    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5d

    .line 415
    :cond_46
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_57

    .line 416
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 417
    const v0, 0x7f0c00d8

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 419
    :cond_57
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$302(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;Z)Z

    goto :goto_11

    .line 422
    :cond_5d
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    const-string v3, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v0, v3}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 423
    const-string v0, "data.videos"

    invoke-static {v3, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a(Ljava/util/List;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u6761"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
    invoke-static {v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;

    move-result-object v4

    iget v5, v4, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->filter_num:I

    iget-object v6, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v4, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->filter_num:I

    .line 427
    sget-boolean v4, Lmybl/BiliFilter;->filter_on:Z

    if-eqz v4, :cond_cf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff0c\u5df2\u8fc7\u6ee4"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
    invoke-static {v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;

    move-result-object v4

    iget v4, v4, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->filter_num:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u6761"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_cf
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->f:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_103

    .line 430
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    iget-object v4, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 431
    iget-object v4, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    if-eqz v4, :cond_103

    .line 433
    :try_start_f4
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->cursor:Ljava/lang/Long;
    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$802(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_103
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_103} :catch_144

    .line 438
    :cond_103
    :goto_103
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    iget-boolean v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->hasNext:Z

    if-eqz v0, :cond_13d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13d

    const/4 v0, 0x1

    :goto_110
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->h:Z
    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$302(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;Z)Z

    .line 439
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->h:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_11

    .line 440
    const-wide/16 v0, 0x3e8

    :try_start_12b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_13f

    .line 441
    :goto_12e
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 442
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # operator++ for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->g:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$608(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)I

    .line 443
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->k()V

    goto/16 :goto_11

    :cond_13d
    move v0, v1

    .line 438
    goto :goto_110

    .line 440
    :catch_13f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12e

    .line 434
    :catch_144
    move-exception v0

    goto :goto_103
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 361
    check-cast p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 395
    :cond_1e
    :goto_1e
    return-void

    .line 377
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->i:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;Z)Z

    .line 378
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 379
    if-nez v0, :cond_2f

    .line 380
    invoke-static {}, Lbl/bbi;->a()V

    .line 382
    :cond_2f
    instance-of v1, p1, Lcom/bilibili/api/BiliApiException;

    if-eqz v1, :cond_4a

    .line 383
    check-cast p1, Lcom/bilibili/api/BiliApiException;

    .line 384
    iget v1, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v2, -0x194

    if-ne v1, v2, :cond_1e

    .line 385
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a(Z)V

    .line 386
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 387
    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_1e

    .line 391
    :cond_4a
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->cursor:Ljava/lang/Long;
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 392
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->a(Z)V

    .line 393
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    goto :goto_1e
.end method
