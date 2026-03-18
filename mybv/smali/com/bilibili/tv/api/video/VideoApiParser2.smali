.class public Lcom/bilibili/tv/api/video/VideoApiParser2;
.super Ljava/lang/Object;
.source "VideoApiParser2.java"

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

.field static final TAG:Ljava/lang/String; = "VideoApiParser2"

.field static final UNSUPPORT_DOWNLOAD:Ljava/lang/String; = "\u8be5\u89c6\u9891\u6682\u4e0d\u652f\u6301\u7f13\u5b58"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static judgeSeasonLegal(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .prologue
    .line 119
    const-string v0, "season"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 120
    const-string v0, "season"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 121
    const-string v1, "is_finish"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v2, "season_id"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 123
    :cond_38
    const-string v0, "season"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_3d
    return-void
.end method

.method static judgeSpLegal(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .prologue
    .line 109
    const-string v0, "sp"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 110
    const-string v0, "sp"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 111
    const-string v1, "spid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 113
    :cond_2c
    const-string v0, "sp"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_31
    return-void
.end method

.method static resetPageObject(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V
    .locals 3

    .prologue
    .line 129
    if-nez p0, :cond_3

    .line 138
    :goto_2
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 133
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

    .line 137
    :goto_22
    iput p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    goto :goto_2

    .line 135
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    const-string v1, "\\s{3,}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/api/video/VideoApiParser2;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    goto :goto_22
.end method

.method private static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    if-nez p0, :cond_4

    .line 142
    const-string p0, ""

    .line 144
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

    .line 29
    const-string v0, "VideoApiParser2"

    const-string v1, "VideoApiParser2.convert() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "VideoApiParser2"

    const-string v2, "========== VIDEO DETAIL API RESPONSE START =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v1, "VideoApiParser2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v1, "VideoApiParser2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v1, "VideoApiParser2"

    const-string v2, "========== VIDEO DETAIL API RESPONSE END =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v0}, Lbl/jp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_190

    .line 37
    new-instance v4, Lcom/bilibili/okretro/GeneralResponse;

    invoke-direct {v4}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 38
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 39
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 40
    iget v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    const/16 v2, -0x194

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x194

    iput v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 41
    :cond_5c
    iget v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    const/16 v2, -0x133

    if-ne v1, v2, :cond_6e

    .line 42
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    .line 102
    :goto_6a
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 103
    return-object v4

    .line 43
    :cond_6e
    iget v1, v4, Lcom/bilibili/okretro/GeneralResponse;->code:I

    if-eqz v1, :cond_7b

    .line 44
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    goto :goto_6a

    .line 46
    :cond_7b
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 47
    const-string v2, "View"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 48
    const-string v2, "Card"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 49
    const-string v2, "Tags"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 50
    const-string v2, "Related"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 51
    const-string v1, "bp"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 52
    const-string v1, "bp"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 53
    const-string v2, "mine"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    const-string v2, "mine"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_bd

    .line 54
    const-string v2, "mine"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_bd
    invoke-static {v5}, Lcom/bilibili/tv/api/video/VideoApiParser2;->judgeSeasonLegal(Lcom/alibaba/fastjson/JSONObject;)V

    .line 58
    invoke-static {v5}, Lcom/bilibili/tv/api/video/VideoApiParser2;->judgeSpLegal(Lcom/alibaba/fastjson/JSONObject;)V

    .line 59
    const-class v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 60
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/bilibili/tv/api/video/VideoApiParser2;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 61
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Lcom/bilibili/tv/api/video/VideoApiParser2;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 62
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->canDownload()Z

    move-result v2

    if-nez v2, :cond_e5

    .line 63
    const-string v2, "\u5e94\u7248\u6743\u65b9\u8981\u6c42\uff0c\u4ec5\u4f9b\u5728\u7ebf\u64ad\u653e"

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 65
    :cond_e5
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isMangoVideo()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 66
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    .line 67
    if-eqz v2, :cond_f1

    .line 68
    iput-boolean v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanDownload:Z

    .line 70
    :cond_f1
    const-string v2, "\u8be5\u89c6\u9891\u6682\u4e0d\u652f\u6301\u7f13\u5b58"

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 72
    :cond_f5
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 73
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isPageListEmpty()Z

    move-result v8

    if-nez v8, :cond_113

    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 75
    :goto_101
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 76
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget v9, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    invoke-static {v2, v9}, Lcom/bilibili/tv/api/video/VideoApiParser2;->resetPageObject(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V

    goto :goto_101

    .line 79
    :cond_113
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;

    invoke-static {v2, v6}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    .line 80
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v2, v6}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    .line 81
    const-string v2, "ugc_season"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 82
    const-string v2, "ugc_season"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    .line 83
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_18c

    .line 84
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    .line 85
    iget-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "sections"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 86
    if-eqz v5, :cond_18c

    .line 87
    iput-object v5, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sections:Lcom/alibaba/fastjson/JSONArray;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    move v2, v3

    .line 89
    :goto_15d
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_18c

    .line 90
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 91
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    const-string v7, "episodes"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 93
    const-string v8, "id"

    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    .line 94
    const-string v9, "type"

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 95
    iget-object v9, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    new-instance v10, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    invoke-direct {v10, v6, v7, v8, v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_15d

    .line 100
    :cond_18c
    iput-object v1, v4, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    goto/16 :goto_6a

    .line 105
    :cond_190
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
    .line 18
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/VideoApiParser2;->convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;

    move-result-object v0

    return-object v0
.end method
