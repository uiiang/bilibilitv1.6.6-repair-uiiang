.class Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;
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
        "Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 377
    const-string v2, "FavoriteVideoFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collection result: fid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->fid:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", videos count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3f

    iget-object v0, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    .line 378
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_41

    .line 401
    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    move v0, v1

    .line 378
    goto :goto_2b

    .line 382
    :cond_41
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 384
    if-eqz p1, :cond_95

    iget-object v0, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    if-eqz v0, :cond_95

    iget-object v0, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v6, :cond_89

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    iget-object v2, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Ljava/util/List;)V

    .line 387
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    iget-object v2, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 391
    :goto_79
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    iget v2, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->mPageCount:I

    if-lt v0, v2, :cond_3e

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    goto :goto_3e

    .line 389
    :cond_89
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    iget-object v2, p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;->videos:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b(Ljava/util/List;)V

    goto :goto_79

    .line 396
    :cond_95
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 397
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v6, :cond_3e

    .line 398
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto :goto_3e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 374
    check-cast p1, Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->a(Lcom/bilibili/tv/api/favorite/BiliSearchFavoriteBox;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

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
    .locals 3

    .prologue
    .line 410
    const-string v0, "FavoriteVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_30

    .line 419
    :cond_2f
    :goto_2f
    return-void

    .line 415
    :cond_30
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->k()V

    goto :goto_2f
.end method
