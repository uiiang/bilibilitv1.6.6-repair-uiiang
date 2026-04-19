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
    .line 95
    if-nez p0, :cond_3

    .line 104
    :goto_2
    return-void

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 99
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

    .line 103
    :goto_22
    iput p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    goto :goto_2

    .line 101
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
    .line 107
    if-nez p0, :cond_4

    .line 108
    const-string p0, ""

    .line 110
    :cond_4
    invoke-static {p0}, Lbl/jq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;
    .locals 11
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
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "VideoInfoApi"

    const-string v2, "========== /x/web-interface/view Response =========="

    invoke-static {v1, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "VideoInfoApi"

    invoke-static {v1, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lbl/jp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1c3

    .line 28
    new-instance v4, Lcom/bilibili/okretro/GeneralResponse;

    invoke-direct {v4}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 29
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 30
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 31
    iget v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    const/16 v2, -0x194

    if-ne v1, v2, :cond_32

    .line 32
    const/16 v1, 0x194

    iput v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 34
    :cond_32
    iget v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    if-eqz v1, :cond_42

    .line 35
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    .line 88
    :goto_3e
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 89
    return-object v4

    .line 37
    :cond_42
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 38
    const-string v1, "bp"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 39
    const-string v1, "bp"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_6f

    const-string v2, "mine"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "mine"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6f

    .line 41
    const-string v2, "mine"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_6f
    const-class v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 45
    const-string v2, "VideoInfoApi"

    const-string v6, "========== Parsed BiliVideoDetail =========="

    invoke-static {v2, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "VideoInfoApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCover = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "VideoInfoApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTitle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v6, "VideoInfoApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOwner = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v2, :cond_15b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mid="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-wide v8, v8, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ",name="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v8, v8, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_e8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "VideoInfoApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/bilibili/tv/api/video/VideoApiParser3;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 51
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Lcom/bilibili/tv/api/video/VideoApiParser3;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 52
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->canDownload()Z

    move-result v2

    if-nez v2, :cond_129

    .line 53
    const-string v2, "\u5e94\u7248\u6743\u65b9\u8981\u6c42\uff0c\u4ec5\u4f9b\u5728\u7ebf\u64ad\u653e"

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 55
    :cond_129
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isMangoVideo()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 56
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v2, :cond_137

    .line 57
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iput-boolean v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanDownload:Z

    .line 59
    :cond_137
    const-string v2, "\u8be5\u89c6\u9891\u6682\u4e0d\u652f\u6301\u7f13\u5b58"

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 61
    :cond_13b
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 62
    if-eqz v2, :cond_15e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15e

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_149
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 64
    iget v7, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    invoke-static {v2, v7}, Lcom/bilibili/tv/api/video/VideoApiParser3;->resetPageObject(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V

    goto :goto_149

    .line 48
    :cond_15b
    const-string v2, "null"

    goto :goto_e8

    .line 67
    :cond_15e
    const-string v2, "ugc_season"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 68
    const-string v2, "ugc_season"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    .line 69
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_1bf

    .line 70
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    .line 71
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "sections"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 72
    if-eqz v5, :cond_1bf

    .line 73
    iput-object v5, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sections:Lcom/alibaba/fastjson/JSONArray;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    move v2, v3

    .line 75
    :goto_190
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1bf

    .line 76
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 77
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    const-string v7, "episodes"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 79
    const-string v8, "id"

    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    .line 80
    const-string v9, "type"

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 81
    iget-object v9, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    new-instance v10, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    invoke-direct {v10, v6, v7, v8, v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_190

    .line 86
    :cond_1bf
    iput-object v1, v4, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    goto/16 :goto_3e

    .line 91
    :cond_1c3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Response is not a jsonobject!"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
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
