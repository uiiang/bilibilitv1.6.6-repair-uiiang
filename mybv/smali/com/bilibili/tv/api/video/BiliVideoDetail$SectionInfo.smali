.class public Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;
.super Ljava/lang/Object;
.source "BiliVideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/BiliVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionInfo"
.end annotation


# instance fields
.field public episodes:Lcom/alibaba/fastjson/JSONArray;

.field public id:I

.field public parsedEpisodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;II)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->title:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 183
    iput p3, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->id:I

    .line 184
    iput p4, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->type:I

    .line 185
    return-void
.end method

.method public static parseEpisodes(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 194
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :goto_d
    return-object v0

    .line 196
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_71

    .line 199
    :try_start_1f
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 200
    if-nez v4, :cond_29

    .line 197
    :cond_25
    :goto_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 203
    :cond_29
    const-string v0, "arc"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_25

    .line 207
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 208
    const-string v5, "author"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_4b

    .line 210
    const-class v5, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/video/BiliUser;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 212
    :cond_4b
    const-string v1, "badge_info"

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_6b

    .line 214
    const-string v4, "text"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v5, "bg_color"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 217
    iput-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 218
    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 221
    :cond_6b
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_6e} :catch_6f

    goto :goto_25

    .line 222
    :catch_6f
    move-exception v0

    goto :goto_25

    :cond_71
    move-object v0, v3

    .line 226
    goto :goto_d
.end method
