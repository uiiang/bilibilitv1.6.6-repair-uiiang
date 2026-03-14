.class Lbl/aef2$a;
.super Lbl/vn;
.source "aef2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aef2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/aef2;


# direct methods
.method private constructor <init>(Lbl/aef2;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lbl/aef2;Lbl/aef2$1;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lbl/aef2$a;-><init>(Lbl/aef2;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    const-string v0, "aef2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 162
    const-string v0, "aef2"

    const-string v1, "onResponse: adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_29
    return-void

    .line 165
    :cond_2a
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->j()V

    .line 166
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # setter for: Lbl/aef2;->h:Z
    invoke-static {v0, v3}, Lbl/aef2;->access$302(Lbl/aef2;Z)Z

    .line 167
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    invoke-virtual {v0}, Lbl/aef2$b;->a()I

    move-result v0

    if-nez v0, :cond_4a

    if-eqz p1, :cond_be

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 168
    :cond_4a
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 169
    const-string v2, "aef2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse: list size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    const-string v1, "aef2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse: data size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->f:I
    invoke-static {v1}, Lbl/aef2;->access$600(Lbl/aef2;)I

    move-result v1

    if-ne v1, v4, :cond_b3

    .line 173
    iget-object v1, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v1}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/aef2$b;->a(Ljava/util/List;)V

    goto/16 :goto_29

    .line 169
    :cond_b0
    const-string v0, "null"

    goto :goto_67

    .line 176
    :cond_b3
    iget-object v1, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v1}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/aef2$b;->b(Ljava/util/List;)V

    goto/16 :goto_29

    .line 180
    :cond_be
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->f:I
    invoke-static {v0}, Lbl/aef2;->access$600(Lbl/aef2;)I

    move-result v0

    if-ne v0, v4, :cond_d3

    .line 181
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->l()V

    .line 182
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lbl/aef2;->a(I)V

    .line 184
    :cond_d3
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # setter for: Lbl/aef2;->g:Z
    invoke-static {v0, v3}, Lbl/aef2;->access$202(Lbl/aef2;Z)Z

    goto/16 :goto_29
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lbl/aef2$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->isAdded()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 194
    const-string v0, "aef2"

    const-string v1, "onError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    if-nez v0, :cond_10

    .line 202
    :cond_f
    :goto_f
    return-void

    .line 198
    :cond_10
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    const/4 v1, 0x0

    # setter for: Lbl/aef2;->h:Z
    invoke-static {v0, v1}, Lbl/aef2;->access$302(Lbl/aef2;Z)Z

    .line 199
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->f:I
    invoke-static {v0}, Lbl/aef2;->access$600(Lbl/aef2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 200
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->k()V

    goto :goto_f
.end method
