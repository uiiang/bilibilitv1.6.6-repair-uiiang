.class Lbl/afi$3$2;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi$3;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afi$3;

.field final synthetic val$code:I

.field final synthetic val$json:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbl/afi$3;ILcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lbl/afi$3$2;->this$1:Lbl/afi$3;

    iput p2, p0, Lbl/afi$3$2;->val$code:I

    iput-object p3, p0, Lbl/afi$3$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lbl/afi$3$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    iget v0, p0, Lbl/afi$3$2;->val$code:I

    if-nez v0, :cond_15

    .line 430
    const-string v0, "SearchFragment"

    const-string v1, "API success, passing full json to response handler on main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lbl/afi$3$2;->this$1:Lbl/afi$3;

    iget-object v0, v0, Lbl/afi$3;->val$searchResponse:Lbl/afi$SearchVideoResponse;

    iget-object v1, p0, Lbl/afi$3$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lbl/afi$SearchVideoResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 437
    :goto_14
    return-void

    .line 433
    :cond_15
    const-string v0, "SearchFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API error: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/afi$3$2;->val$code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afi$3$2;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Lcom/bilibili/api/BiliApiException;

    iget v1, p0, Lbl/afi$3$2;->val$code:I

    iget-object v2, p0, Lbl/afi$3$2;->val$message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bilibili/api/BiliApiException;-><init>(ILjava/lang/String;)V

    .line 435
    iget-object v1, p0, Lbl/afi$3$2;->this$1:Lbl/afi$3;

    iget-object v1, v1, Lbl/afi$3;->val$searchResponse:Lbl/afi$SearchVideoResponse;

    invoke-virtual {v1, v0}, Lbl/afi$SearchVideoResponse;->onError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
