.class Lbl/afi$6$2;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi$6;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afi$6;

.field final synthetic val$code:I

.field final synthetic val$json:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbl/afi$6;ILcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lbl/afi$6$2;->this$1:Lbl/afi$6;

    iput p2, p0, Lbl/afi$6$2;->val$code:I

    iput-object p3, p0, Lbl/afi$6$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lbl/afi$6$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 646
    iget v0, p0, Lbl/afi$6$2;->val$code:I

    if-nez v0, :cond_e

    .line 647
    iget-object v0, p0, Lbl/afi$6$2;->this$1:Lbl/afi$6;

    iget-object v0, v0, Lbl/afi$6;->val$searchResponse:Lbl/afi$SearchLiveRoomResponse;

    iget-object v1, p0, Lbl/afi$6$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lbl/afi$SearchLiveRoomResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 652
    :goto_d
    return-void

    .line 649
    :cond_e
    new-instance v0, Lcom/bilibili/api/BiliApiException;

    iget v1, p0, Lbl/afi$6$2;->val$code:I

    iget-object v2, p0, Lbl/afi$6$2;->val$message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bilibili/api/BiliApiException;-><init>(ILjava/lang/String;)V

    .line 650
    iget-object v1, p0, Lbl/afi$6$2;->this$1:Lbl/afi$6;

    iget-object v1, v1, Lbl/afi$6;->val$searchResponse:Lbl/afi$SearchLiveRoomResponse;

    invoke-virtual {v1, v0}, Lbl/afi$SearchLiveRoomResponse;->onError(Ljava/lang/Throwable;)V

    goto :goto_d
.end method
