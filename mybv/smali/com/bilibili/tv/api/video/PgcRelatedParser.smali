.class public Lcom/bilibili/tv/api/video/PgcRelatedParser;
.super Ljava/lang/Object;
.source "PgcRelatedParser.java"

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
        "Ljava/util/List",
        "<",
        "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lbl/jp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_64

    .line 19
    new-instance v3, Lcom/bilibili/okretro/GeneralResponse;

    invoke-direct {v3}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 20
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 21
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 22
    iget v1, v3, Lcom/bilibili/okretro/GeneralResponse;->code:I

    if-eqz v1, :cond_2b

    .line 23
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    .line 41
    :cond_27
    :goto_27
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 42
    return-object v3

    .line 25
    :cond_2b
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_27

    .line 27
    const-string v2, "season"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 28
    if-eqz v4, :cond_27

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const/4 v1, 0x0

    move v2, v1

    :goto_42
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_61

    .line 31
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 32
    const-class v6, Lcom/bilibili/tv/api/video/PgcRelatedSeason;

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/video/PgcRelatedSeason;

    .line 33
    if-eqz v1, :cond_5d

    .line 34
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->toBiliVideoDetail()Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_42

    .line 37
    :cond_61
    iput-object v5, v3, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    goto :goto_27

    .line 44
    :cond_64
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
    .line 12
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcRelatedParser;->convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;

    move-result-object v0

    return-object v0
.end method
