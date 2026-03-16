.class Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;
.super Lbl/vn;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadVideoFavoriteVideos()V
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
    .line 306
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_b

    .line 339
    :cond_a
    :goto_a
    return-void

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 314
    if-eqz p1, :cond_6f

    .line 315
    const-string v0, "medias"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 316
    const-string v0, "info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 317
    const-string v0, "has_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v5

    .line 319
    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v2, :cond_65

    .line 321
    if-eqz v4, :cond_60

    const-string v0, "title"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 322
    :goto_42
    if-eqz v4, :cond_63

    const-string v0, "media_count"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 323
    :goto_4a
    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v4}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v3, v2, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 328
    :goto_58
    if-nez v5, :cond_a

    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    goto :goto_a

    .line 321
    :cond_60
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_42

    :cond_63
    move v0, v1

    .line 322
    goto :goto_4a

    .line 326
    :cond_65
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->c(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_58

    .line 334
    :cond_6f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 336
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 337
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

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
    .line 348
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 356
    :cond_13
    :goto_13
    return-void

    .line 352
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 354
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->k()V

    goto :goto_13
.end method
