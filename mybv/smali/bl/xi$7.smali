.class Lbl/xi$7;
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
    .line 1120
    iput-object p1, p0, Lbl/xi$7;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 1124
    :try_start_1
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: start loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 1126
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v5

    .line 1129
    iget-object v1, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v1}, Lbl/xi;->access$500(Lbl/xi;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v1}, Lbl/xi;->access$500(Lbl/xi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    .line 1130
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: using bvid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v3}, Lbl/xi;->access$500(Lbl/xi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v3}, Lbl/xi;->access$600(Lbl/xi;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v1, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentBvid:Ljava/lang/String;
    invoke-static {v1}, Lbl/xi;->access$500(Lbl/xi;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v2}, Lbl/xi;->access$600(Lbl/xi;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lmybl/MyBiliApiService;->getVideoShotByBvid(Ljava/lang/String;JILjava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 1137
    :goto_75
    invoke-virtual {v0}, Lbl/vp;->d()Lretrofit2/Response;

    move-result-object v0

    invoke-static {v0}, Lbl/we;->a(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1140
    if-nez v0, :cond_d1

    .line 1141
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: jsonResponse is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_88
    return-void

    .line 1133
    :cond_89
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: using aid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentAid:J
    invoke-static {v3}, Lbl/xi;->access$700(Lbl/xi;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v3}, Lbl/xi;->access$600(Lbl/xi;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v1, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentAid:J
    invoke-static {v1}, Lbl/xi;->access$700(Lbl/xi;)J

    move-result-wide v8

    iget-object v1, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->currentCid:J
    invoke-static {v1}, Lbl/xi;->access$600(Lbl/xi;)J

    move-result-wide v10

    const/4 v12, 0x1

    move-object v7, v0

    move-object v13, v5

    invoke-interface/range {v7 .. v13}, Lmybl/MyBiliApiService;->getVideoShot(JJILjava/lang/String;)Lbl/vp;

    move-result-object v0

    goto :goto_75

    .line 1149
    :cond_d1
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 1150
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

    .line 1151
    if-eqz v1, :cond_11b

    .line 1152
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: code != 0, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f8} :catch_f9

    goto :goto_88

    .line 1250
    :catch_f9
    move-exception v0

    .line 1251
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

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_88

    .line 1156
    :cond_11b
    :try_start_11b
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1157
    if-nez v1, :cond_12c

    .line 1158
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 1166
    :cond_12c
    new-instance v2, Lcom/bilibili/tv/api/video/VideoShot;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/VideoShot;-><init>()V

    .line 1167
    const-string v0, "img_x_len"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgXLen(I)V

    .line 1168
    const-string v0, "img_y_len"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgYLen(I)V

    .line 1169
    const-string v0, "img_x_size"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgXSize(I)V

    .line 1170
    const-string v0, "img_y_size"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setImgYSize(I)V

    .line 1171
    const-string v0, "pvdata"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setPvdata(Ljava/lang/String;)V

    .line 1173
    const-string v0, "image"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 1174
    const-string v0, "image"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 1175
    if-eqz v3, :cond_187

    .line 1176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 1177
    :goto_174
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_184

    .line 1178
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_174

    .line 1180
    :cond_184
    invoke-virtual {v2, v4}, Lcom/bilibili/tv/api/video/VideoShot;->setImage(Ljava/util/List;)V

    .line 1184
    :cond_187
    const-string v0, "index"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 1185
    const-string v0, "index"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1186
    if-eqz v1, :cond_1b0

    .line 1187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 1188
    :goto_19d
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1ad

    .line 1189
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_19d

    .line 1191
    :cond_1ad
    invoke-virtual {v2, v3}, Lcom/bilibili/tv/api/video/VideoShot;->setIndex(Ljava/util/List;)V

    .line 1199
    :cond_1b0
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c0

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 1200
    :cond_1c0
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getPvdata()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21b

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getPvdata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21b

    .line 1201
    const-string v0, "VideoShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: index empty, fallback to pvdata="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getPvdata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getPvdata()Ljava/lang/String;

    move-result-object v0

    # invokes: Lbl/xi;->loadIndexFromPvdata(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0}, Lbl/xi;->access$800(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_2ca

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2ca

    .line 1204
    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/video/VideoShot;->setIndex(Ljava/util/List;)V

    .line 1205
    const-string v1, "VideoShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVideoShot: pvdata fallback ok, indexSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_21b
    :goto_21b
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

    .line 1212
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

    .line 1213
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

    .line 1215
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c1

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 1216
    :cond_2c1
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: shot.getImage() is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 1207
    :cond_2ca
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: pvdata fallback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21b

    .line 1220
    :cond_2d3
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e3

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2ec

    .line 1221
    :cond_2e3
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: shot.getIndex() is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 1225
    :cond_2ec
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: data valid, setting to PlayerSeekBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v0}, Lbl/xi;->access$900(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v0

    if-eqz v0, :cond_30b

    .line 1227
    iget-object v0, p0, Lbl/xi$7;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v0}, Lbl/xi;->access$900(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v0

    new-instance v1, Lbl/xi$7$1;

    invoke-direct {v1, p0, v2}, Lbl/xi$7$1;-><init>(Lbl/xi$7;Lcom/bilibili/tv/api/video/VideoShot;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_88

    .line 1248
    :cond_30b
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: l is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_312
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_312} :catch_f9

    goto/16 :goto_88
.end method
