.class Lbl/aef4$a;
.super Lbl/vn;
.source "aef4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aef4;
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
.field final synthetic this$0:Lbl/aef4;


# direct methods
.method private constructor <init>(Lbl/aef4;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lbl/aef4;Lbl/aef4$1;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lbl/aef4$a;-><init>(Lbl/aef4;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    const-string v0, "aef4"

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

    .line 125
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    if-nez v0, :cond_29

    .line 126
    const-string v0, "aef4"

    const-string v1, "onResponse: adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_28
    return-void

    .line 129
    :cond_29
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->j()V

    .line 130
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # setter for: Lbl/aef4;->h:Z
    invoke-static {v0, v4}, Lbl/aef4;->access$302(Lbl/aef4;Z)Z

    .line 131
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    invoke-virtual {v0}, Lbl/aef4$b;->a()I

    move-result v0

    if-nez v0, :cond_49

    if-eqz p1, :cond_af

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 132
    :cond_49
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 133
    const-string v2, "aef4"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse: list size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    const-string v1, "aef4"

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

    .line 136
    iget-object v1, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v1}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/aef4$b;->a(Ljava/util/List;)V

    .line 141
    :goto_a5
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # setter for: Lbl/aef4;->g:Z
    invoke-static {v0, v4}, Lbl/aef4;->access$402(Lbl/aef4;Z)Z

    goto/16 :goto_28

    .line 133
    :cond_ac
    const-string v0, "null"

    goto :goto_66

    .line 138
    :cond_af
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->l()V

    .line 139
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lbl/aef4;->a(I)V

    goto :goto_a5
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lbl/aef4$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->isAdded()Z

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
    .line 151
    const-string v0, "aef4"

    const-string v1, "onError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    if-nez v0, :cond_10

    .line 157
    :goto_f
    return-void

    .line 155
    :cond_10
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    const/4 v1, 0x0

    # setter for: Lbl/aef4;->h:Z
    invoke-static {v0, v1}, Lbl/aef4;->access$302(Lbl/aef4;Z)Z

    .line 156
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->k()V

    goto :goto_f
.end method
