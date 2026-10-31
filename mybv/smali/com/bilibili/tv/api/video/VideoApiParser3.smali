.class public Lcom/bilibili/tv/api/video/VideoApiParser3;
.super Ljava/lang/Object;
.source "VideoApiParser3.java"

# interfaces
.implements Lbl/vu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbl/vu",
        "<",
        "Lcom/bilibili/okretro/GeneralResponse",
        "<",
        "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
        ">;>;"
    }
.end annotation


# static fields
.field static final DISALLOW_DOWNLOAD:Ljava/lang/String; = "\u5e94\u7248\u6743\u65b9\u8981\u6c42\uff0c\u4ec5\u4f9b\u5728\u7ebf\u64ad\u653e"

.field static final UNSUPPORT_DOWNLOAD:Ljava/lang/String; = "\u8be5\u89c6\u9891\u6682\u4e0d\u652f\u6301\u7f13\u5b58"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetPageObject(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V
    .locals 3

    .prologue
    .line 132
    if-nez p0, :cond_3

    .line 141
    :goto_2
    return-void

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 140
    :goto_22
    iput p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    goto :goto_2

    .line 138
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    const-string v1, "\\s{3,}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/api/video/VideoApiParser3;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    goto :goto_22
.end method

.method private static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    if-nez p0, :cond_4

    .line 145
    const-string p0, ""

    .line 147
    :cond_4
    invoke-static {p0}, Lbl/jq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;
    .locals 22
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 24
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 26
    const-string v5, "VideoInfoApi"

    const-string v8, "========== /x/web-interface/view Response =========="

    invoke-static {v5, v8}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v5, "VideoInfoApi"

    invoke-static {v5, v4}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 29
    const-string v5, "LoadPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[api] body="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " chars | readBody="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v6, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms | dumpRawLog="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v6, v8, v6

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v4}, Lbl/jp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 34
    const-string v5, "LoadPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[api] parseJsonTree="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long/2addr v6, v8

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_32d

    .line 36
    new-instance v12, Lcom/bilibili/okretro/GeneralResponse;

    invoke-direct {v12}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 37
    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 38
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v12, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 39
    iget v5, v12, Lcom/bilibili/okretro/GeneralResponse;->code:I

    const/16 v6, -0x194

    if-ne v5, v6, :cond_9a

    .line 40
    const/16 v5, 0x194

    iput v5, v12, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 42
    :cond_9a
    iget v5, v12, Lcom/bilibili/okretro/GeneralResponse;->code:I

    if-eqz v5, :cond_e1

    .line 43
    const-string v5, "message"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    .line 122
    :goto_a6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 123
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 124
    const-string v4, "LoadPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[api] clearJsonTree="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms | convertTotal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v4, v5}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v12

    .line 45
    :cond_e1
    const-string v5, "data"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 46
    const-string v5, "bp"

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 47
    const-string v5, "bp"

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 48
    if-eqz v5, :cond_10e

    const-string v6, "mine"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    const-string v6, "mine"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_10e

    .line 49
    const-string v6, "mine"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_10e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 53
    const-class v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 55
    const-string v6, "VideoInfoApi"

    const-string v8, "========== Parsed BiliVideoDetail =========="

    invoke-static {v6, v8}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v6, "VideoInfoApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCover = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v6, "VideoInfoApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTitle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v8, "VideoInfoApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOwner = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v6, :cond_209

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mid="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-wide v0, v13, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ",name="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v13, v13, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_193
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v6, "VideoInfoApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMid() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/bilibili/tv/api/video/VideoApiParser3;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 61
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-static {v6}, Lcom/bilibili/tv/api/video/VideoApiParser3;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 62
    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->canDownload()Z

    move-result v6

    if-nez v6, :cond_1d6

    .line 63
    const-string v6, "\u5e94\u7248\u6743\u65b9\u8981\u6c42\uff0c\u4ec5\u4f9b\u5728\u7ebf\u64ad\u653e"

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 65
    :cond_1d6
    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isMangoVideo()Z

    move-result v6

    if-eqz v6, :cond_1e9

    .line 66
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v6, :cond_1e5

    .line 67
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanDownload:Z

    .line 69
    :cond_1e5
    const-string v6, "\u8be5\u89c6\u9891\u6682\u4e0d\u652f\u6301\u7f13\u5b58"

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 71
    :cond_1e9
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 72
    if-eqz v6, :cond_20c

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20c

    .line 73
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1f7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 74
    iget v9, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    invoke-static {v6, v9}, Lcom/bilibili/tv/api/video/VideoApiParser3;->resetPageObject(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V

    goto :goto_1f7

    .line 58
    :cond_209
    const-string v6, "null"

    goto :goto_193

    .line 77
    :cond_20c
    const-string v6, "ugc_season"

    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2af

    .line 78
    const-string v6, "ugc_season"

    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    .line 79
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_2af

    .line 80
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    .line 81
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "sections"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 82
    if-eqz v7, :cond_2af

    .line 83
    iput-object v7, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sections:Lcom/alibaba/fastjson/JSONArray;

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 86
    const/4 v6, 0x0

    :goto_242
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_28b

    .line 87
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 88
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 89
    const-string v19, "episodes"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v19

    .line 90
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v20

    .line 91
    const-string v21, "type"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v13

    .line 92
    new-instance v21, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;II)V

    .line 95
    invoke-static/range {v19 .. v19}, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->parseEpisodes(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, v21

    iput-object v13, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->parsedEpisodes:Ljava/util/List;

    .line 96
    iget-object v13, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_242

    .line 98
    :cond_28b
    const-string v6, "LoadPerf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[api] preParseEpisodes="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v8, v18, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {v6, v7}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2af
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    iget-object v8, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v8, :cond_2dd

    .line 107
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 108
    const/4 v6, 0x0

    move v9, v6

    :goto_2c1
    if-ge v9, v8, :cond_2dc

    .line 109
    iget-object v6, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 110
    if-eqz v6, :cond_335

    iget-object v13, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v13, :cond_335

    .line 111
    iget-object v6, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    add-int/2addr v6, v7

    .line 108
    :goto_2d8
    add-int/lit8 v9, v9, 0x1

    move v7, v6

    goto :goto_2c1

    :cond_2dc
    move v6, v8

    .line 115
    :cond_2dd
    const-string v8, "LoadPerf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[api] toJavaObject="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v14, v16, v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "ms | sectionsBuild="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v14, v18, v16

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "ms | sections="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " | episodes="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | totalToData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v14, v18, v10

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object v5, v12, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    goto/16 :goto_a6

    .line 128
    :cond_32d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "Response is not a jsonobject!"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_335
    move v6, v7

    goto :goto_2d8
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/VideoApiParser3;->convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;

    move-result-object v0

    return-object v0
.end method
