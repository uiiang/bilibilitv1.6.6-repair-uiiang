.class Lbl/xi$6;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi;->loadVideoShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;


# direct methods
.method constructor <init>(Lbl/xi;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lbl/xi$6;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 878
    :try_start_1
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: start loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 880
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v5

    .line 883
    iget-object v1, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v1}, Lbl/xi;->access$400(Lbl/xi;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v1}, Lbl/xi;->access$400(Lbl/xi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 884
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: using bvid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v3}, Lbl/xi;->access$400(Lbl/xi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v3}, Lbl/xi;->access$500(Lbl/xi;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v1, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v1}, Lbl/xi;->access$400(Lbl/xi;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v2}, Lbl/xi;->access$500(Lbl/xi;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lmybl/MyBiliApiService;->getVideoShotByBvid(Ljava/lang/String;JILjava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 891
    :goto_75
    invoke-virtual {v0}, Lbl/vp;->d()Lretrofit2/Response;

    move-result-object v0

    invoke-static {v0}, Lbl/we;->a(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 892
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: jsonResponse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    if-nez v0, :cond_e9

    .line 895
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: jsonResponse is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_a0
    return-void

    .line 887
    :cond_a1
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: using aid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentAid:J
    invoke-static {v3}, Lbl/xi;->access$600(Lbl/xi;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v3}, Lbl/xi;->access$500(Lbl/xi;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v1, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentAid:J
    invoke-static {v1}, Lbl/xi;->access$600(Lbl/xi;)J

    move-result-wide v8

    iget-object v1, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v1}, Lbl/xi;->access$500(Lbl/xi;)J

    move-result-wide v10

    const/4 v12, 0x1

    move-object v7, v0

    move-object v13, v5

    invoke-interface/range {v7 .. v13}, Lmybl/MyBiliApiService;->getVideoShot(JJILjava/lang/String;)Lbl/vp;

    move-result-object v0

    goto :goto_75

    .line 899
    :cond_e9
    const-string v1, "VideoShot_JSON"

    const-string v2, "========== Full JSON Response =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v1, "VideoShot_JSON"

    invoke-static {v1, v0}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    const-string v1, "VideoShot_JSON"

    const-string v2, "========== End JSON Response =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 904
    const-string v2, "VideoShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVideoShot: code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    if-eqz v1, :cond_147

    .line 906
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: code != 0, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_123} :catch_125

    goto/16 :goto_a0

    .line 988
    :catch_125
    move-exception v0

    .line 989
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a0

    .line 910
    :cond_147
    :try_start_147
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 911
    if-nez v1, :cond_158

    .line 912
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 916
    :cond_158
    const-string v0, "VideoShot_DATA"

    const-string v2, "========== Data Object =========="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v0, "VideoShot_DATA"

    invoke-static {v0, v1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    const-string v0, "VideoShot_DATA"

    const-string v2, "========== End Data Object =========="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    new-instance v2, Lcom/bilibili/tv/api/video/VideoShot;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/VideoShot;-><init>()V

    .line 921
    const-string v0, "img_x_len"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgXLen(I)V

    .line 922
    const-string v0, "img_y_len"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgYLen(I)V

    .line 923
    const-string v0, "img_x_size"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgXSize(I)V

    .line 924
    const-string v0, "img_y_size"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgYSize(I)V

    .line 925
    const-string v0, "pvdata"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setPvdata(Ljava/lang/String;)V

    .line 927
    const-string v0, "image"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 928
    const-string v0, "image"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 929
    if-eqz v3, :cond_1c6

    .line 930
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 931
    :goto_1b3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1c3

    .line 932
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b3

    .line 934
    :cond_1c3
    invoke-virtual {v2, v4}, Lcom/bilibili/tv/api/video/VideoShot;->setImage(Ljava/util/List;)V

    .line 938
    :cond_1c6
    const-string v0, "index"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 939
    const-string v0, "index"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 940
    if-eqz v1, :cond_1ef

    .line 941
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 942
    :goto_1dc
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1ec

    .line 943
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_1dc

    .line 945
    :cond_1ec
    invoke-virtual {v2, v3}, Lcom/bilibili/tv/api/video/VideoShot;->setIndex(Ljava/util/List;)V

    .line 949
    :cond_1ef
    const-string v0, "VideoShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: shot="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", image="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v0, "VideoShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: imgXLen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", imgYLen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", imgXSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", imgYSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v0, "VideoShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: pvdata="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getPvdata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_295

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 954
    :cond_295
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: shot.getImage() is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 958
    :cond_29e
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2ae

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b7

    .line 959
    :cond_2ae
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: shot.getIndex() is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 963
    :cond_2b7
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: data valid, setting to PlayerSeekBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v0}, Lbl/xi;->access$700(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v0

    if-eqz v0, :cond_2d6

    .line 965
    iget-object v0, p0, Lbl/xi$6;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v0}, Lbl/xi;->access$700(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v0

    new-instance v1, Lbl/xi$6$1;

    invoke-direct {v1, p0, v2}, Lbl/xi$6$1;-><init>(Lbl/xi$6;Lcom/bilibili/tv/api/video/VideoShot;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a0

    .line 986
    :cond_2d6
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: l is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_2dd} :catch_125

    goto/16 :goto_a0
.end method
