.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;
.super Lbl/vn;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadAllVideos()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const v9, 0x7f0c00d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 979
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v3

    if-nez v3, :cond_f

    .line 1045
    :cond_e
    :goto_e
    return-void

    .line 982
    :cond_f
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingRemote:Z
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 983
    const-string v0, "AuthSpaceVideo"

    const-string v1, "loadAllVideos response during locate, drop"

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 986
    :cond_1f
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->j()V

    .line 987
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2102(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 989
    if-nez p1, :cond_7c

    .line 990
    :try_start_2b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v3, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2502(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 991
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 992
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 993
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v3, 0x7f0c00d8

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_47

    goto :goto_e

    .line 1037
    :catch_47
    move-exception v0

    .line 1038
    const-string v3, "AuthSpaceVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllVideos parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2502(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 1041
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 1042
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 1043
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V

    goto :goto_e

    .line 997
    :cond_7c
    :try_start_7c
    const-string v3, "page"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 998
    if-eqz v4, :cond_ce

    const-string v3, "count"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    .line 999
    :goto_8b
    if-eqz v4, :cond_d0

    const-string v3, "pn"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    .line 1000
    :goto_94
    if-eqz v4, :cond_d2

    const-string v3, "ps"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    .line 1002
    :goto_9d
    const-string v3, "list"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1003
    if-eqz v3, :cond_d6

    const-string v0, "vlist"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v3, v0

    .line 1004
    :goto_ac
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 1005
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 1006
    :goto_ba
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_d8

    .line 1007
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->fromVlist(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_ce
    move v6, v2

    .line 998
    goto :goto_8b

    :cond_d0
    move v5, v1

    .line 999
    goto :goto_94

    .line 1000
    :cond_d2
    const/16 v3, 0x28

    move v4, v3

    goto :goto_9d

    :cond_d6
    move-object v3, v0

    .line 1003
    goto :goto_ac

    .line 1009
    :cond_d8
    const-string v0, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v7, v0}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1010
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v3

    if-ne v3, v1, :cond_136

    .line 1011
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setVideos(Ljava/util/List;)V

    .line 1012
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 1016
    :goto_f5
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    mul-int/2addr v4, v5

    if-ge v4, v6, :cond_140

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_140

    move v0, v1

    :goto_101
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2502(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 1017
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1018
    if-eqz v0, :cond_10f

    .line 1019
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1020
    :cond_10f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a()I

    move-result v0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_147

    .line 1021
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # operator++ for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2308(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_12a} :catch_47

    .line 1023
    const-wide/16 v4, 0x3e8

    :try_start_12c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_142

    .line 1027
    :goto_12f
    :try_start_12f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    goto/16 :goto_e

    .line 1014
    :cond_136
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->addVideos(Ljava/util/List;)V

    goto :goto_f5

    :cond_140
    move v0, v2

    .line 1016
    goto :goto_101

    .line 1024
    :catch_142
    move-exception v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12f

    .line 1030
    :cond_147
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "pubdate"

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2700(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    .line 1031
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v3, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 1032
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateToCurrent()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_174} :catch_47

    goto/16 :goto_e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 961
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 969
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAllVideos error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 971
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2102(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 972
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 973
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$2300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 974
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 975
    :cond_40
    return-void
.end method
