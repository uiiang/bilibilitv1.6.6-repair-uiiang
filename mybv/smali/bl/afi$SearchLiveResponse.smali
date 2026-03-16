.class public final Lbl/afi$SearchLiveResponse;
.super Lbl/vn;
.source "afi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SearchLiveResponse"
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
.field final synthetic this$0:Lbl/afi;


# direct methods
.method public constructor <init>(Lbl/afi;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "live_room"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lmybl/BiliLiveContentEx2;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 835
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->isVisible()Z

    move-result v0

    if-nez v0, :cond_30

    .line 868
    :cond_2f
    :goto_2f
    return-void

    .line 838
    :cond_30
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->q:Z
    invoke-static {v0, v3}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 839
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 840
    instance-of v2, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-nez v2, :cond_40

    .line 841
    const/4 v0, 0x0

    .line 843
    :cond_40
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    .line 844
    if-eqz v0, :cond_2f

    .line 845
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 846
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 847
    iget-object v1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->o:I
    invoke-static {v1}, Lbl/afi;->access$500(Lbl/afi;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6b

    .line 848
    iget-object v1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 849
    iget-object v1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 851
    :cond_6b
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 852
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    .line 854
    :cond_7c
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 856
    :cond_83
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->p:Z
    invoke-static {v0, v3}, Lbl/afi;->access$302(Lbl/afi;Z)Z

    goto :goto_2f

    .line 859
    :cond_89
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->a(Z)V

    .line 860
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 861
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_aa

    .line 862
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 864
    :cond_aa
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 865
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbl/afi$f;->addRooms(Ljava/util/List;)V

    goto/16 :goto_2f
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 823
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lbl/afi$SearchLiveResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 873
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-nez v0, :cond_f

    .line 896
    :cond_e
    :goto_e
    return-void

    .line 877
    :cond_f
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->q:Z
    invoke-static {v0, v3}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 878
    iget-object v0, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 879
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-nez v1, :cond_1f

    .line 880
    const/4 v0, 0x0

    .line 882
    :cond_1f
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    .line 883
    if-eqz v0, :cond_e

    .line 884
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 885
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 886
    iget-object v1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->o:I
    invoke-static {v1}, Lbl/afi;->access$500(Lbl/afi;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 887
    iget-object v1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lbl/afi$SearchLiveResponse;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 890
    :cond_4c
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 891
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    .line 894
    :cond_5d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->a(Z)V

    goto :goto_e
.end method
