.class Lbl/aef3$a;
.super Lbl/vn;
.source "aef3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aef3;
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
.field final synthetic this$0:Lbl/aef3;


# direct methods
.method private constructor <init>(Lbl/aef3;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lbl/aef3;Lbl/aef3$1;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lbl/aef3$a;-><init>(Lbl/aef3;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    # getter for: Lbl/aef3;->c:Lbl/aef3$b;
    invoke-static {v0}, Lbl/aef3;->access$200(Lbl/aef3;)Lbl/aef3$b;

    move-result-object v0

    if-nez v0, :cond_a

    .line 138
    :goto_9
    return-void

    .line 128
    :cond_a
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    invoke-virtual {v0}, Lbl/aef3;->j()V

    .line 129
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    # setter for: Lbl/aef3;->h:Z
    invoke-static {v0, v3}, Lbl/aef3;->access$302(Lbl/aef3;Z)Z

    .line 130
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    # getter for: Lbl/aef3;->c:Lbl/aef3$b;
    invoke-static {v0}, Lbl/aef3;->access$200(Lbl/aef3;)Lbl/aef3$b;

    move-result-object v0

    invoke-virtual {v0}, Lbl/aef3$b;->a()I

    move-result v0

    if-nez v0, :cond_2a

    if-eqz p1, :cond_4e

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 131
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    iget-object v1, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    # getter for: Lbl/aef3;->c:Lbl/aef3$b;
    invoke-static {v1}, Lbl/aef3;->access$200(Lbl/aef3;)Lbl/aef3$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/aef3$b;->a(Ljava/util/List;)V

    .line 137
    :goto_48
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    # setter for: Lbl/aef3;->g:Z
    invoke-static {v0, v3}, Lbl/aef3;->access$402(Lbl/aef3;Z)Z

    goto :goto_9

    .line 134
    :cond_4e
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    invoke-virtual {v0}, Lbl/aef3;->l()V

    .line 135
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lbl/aef3;->a(I)V

    goto :goto_48
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lbl/aef3$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    invoke-virtual {v0}, Lbl/aef3;->isAdded()Z

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
    .line 147
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    # getter for: Lbl/aef3;->c:Lbl/aef3$b;
    invoke-static {v0}, Lbl/aef3;->access$200(Lbl/aef3;)Lbl/aef3$b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 152
    :goto_8
    return-void

    .line 150
    :cond_9
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    const/4 v1, 0x0

    # setter for: Lbl/aef3;->h:Z
    invoke-static {v0, v1}, Lbl/aef3;->access$302(Lbl/aef3;Z)Z

    .line 151
    iget-object v0, p0, Lbl/aef3$a;->this$0:Lbl/aef3;

    invoke-virtual {v0}, Lbl/aef3;->k()V

    goto :goto_8
.end method
