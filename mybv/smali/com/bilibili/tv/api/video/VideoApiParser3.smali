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
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;>;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VideoApiParser3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 21
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "VideoApiParser3"

    const-string v2, "========== VIDEO DETAIL API RESPONSE START =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v1, "VideoApiParser3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "VideoApiParser3"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v1, "VideoApiParser3"

    const-string v2, "========== VIDEO DETAIL API RESPONSE END =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v0}, Lbl/jp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_7c

    .line 29
    new-instance v1, Lcom/bilibili/okretro/GeneralResponse;

    invoke-direct {v1}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 30
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 31
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 32
    iget v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    const/16 v3, -0x194

    if-ne v2, v3, :cond_54

    .line 33
    const/16 v2, 0x194

    iput v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    .line 35
    :cond_54
    iget v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    const/16 v3, -0x133

    if-ne v2, v3, :cond_66

    .line 36
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    .line 42
    :goto_62
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 43
    return-object v1

    .line 37
    :cond_66
    iget v2, v1, Lcom/bilibili/okretro/GeneralResponse;->code:I

    if-eqz v2, :cond_73

    .line 38
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    goto :goto_62

    .line 40
    :cond_73
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    goto :goto_62

    .line 45
    :cond_7c
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
    .line 15
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/VideoApiParser3;->convert(Lokhttp3/ResponseBody;)Lcom/bilibili/okretro/GeneralResponse;

    move-result-object v0

    return-object v0
.end method
