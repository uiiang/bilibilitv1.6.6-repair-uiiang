.class Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;
.super Lbl/vn;
.source "BoxListInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->a:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$200(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$700(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_13

    .line 279
    :cond_12
    :goto_12
    return-void

    .line 244
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # setter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->i:Z
    invoke-static {v0, v8}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$002(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;Z)Z

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->a(Z)V

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$700(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 247
    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->getMedias()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 248
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->getMedias()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bd

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;

    .line 252
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 253
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 254
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getCover()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 255
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 256
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 257
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    move-result-object v4

    if-eqz v4, :cond_90

    .line 258
    new-instance v4, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 259
    iget-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 260
    iget-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->getMid()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 262
    :cond_90
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 264
    :cond_94
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->isHasMore()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # setter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->h:Z
    invoke-static {v0, v8}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$102(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;Z)Z

    .line 267
    :cond_9f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->g:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$400(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)I

    move-result v0

    if-ne v0, v9, :cond_b2

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->a:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$200(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;->a(Ljava/util/List;)V

    goto/16 :goto_12

    .line 271
    :cond_b2
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->a:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$200(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;->b(Ljava/util/List;)V

    goto/16 :goto_12

    .line 275
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->g:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$400(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)I

    move-result v0

    if-ne v0, v9, :cond_12

    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$700(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$700(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto/16 :goto_12
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 238
    check-cast p1, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->a(Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->a:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$200(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$b;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$700(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 298
    :cond_1d
    :goto_1d
    return-void

    .line 293
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->i:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$002(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;Z)Z

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->g:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$400(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->a(Z)V

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->d:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;->access$700(Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    goto :goto_1d
.end method
