.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lbl/vu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbl/vu",
        "<",
        "Lcom/bilibili/okretro/GeneralResponse",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2026
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 2028
    const-string v1, "HistoryApi"

    invoke-static {v1, v0}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2030
    new-instance v1, Lcom/bilibili/okretro/GeneralResponse;

    invoke-direct {v1}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 2031
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 2032
    iget v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    if-nez v2, :cond_28

    .line 2033
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2034
    if-eqz v0, :cond_28

    .line 2035
    iput-object v0, v1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    .line 2038
    :cond_28
    return-object v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2023
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;

    move-result-object v0

    return-object v0
.end method
