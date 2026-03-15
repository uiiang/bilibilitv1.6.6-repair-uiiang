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
    .line 112
    iput-object p1, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Lbl/aef4;Lbl/aef4$1;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lbl/aef4$a;-><init>(Lbl/aef4;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    if-nez v0, :cond_a

    .line 131
    :goto_9
    return-void

    .line 120
    :cond_a
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->j()V

    .line 121
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # setter for: Lbl/aef4;->h:Z
    invoke-static {v0, v3}, Lbl/aef4;->access$302(Lbl/aef4;Z)Z

    .line 122
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    invoke-virtual {v0}, Lbl/aef4$b;->a()I

    move-result v0

    if-nez v0, :cond_2a

    if-eqz p1, :cond_4e

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 123
    :cond_2a
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbl/aef4$b;->a(Ljava/util/List;)V

    .line 130
    :goto_48
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # setter for: Lbl/aef4;->g:Z
    invoke-static {v0, v3}, Lbl/aef4;->access$402(Lbl/aef4;Z)Z

    goto :goto_9

    .line 127
    :cond_4e
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->l()V

    .line 128
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lbl/aef4;->a(I)V

    goto :goto_48
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lbl/aef4$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 135
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
    .line 140
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    # getter for: Lbl/aef4;->c:Lbl/aef4$b;
    invoke-static {v0}, Lbl/aef4;->access$200(Lbl/aef4;)Lbl/aef4$b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 145
    :goto_8
    return-void

    .line 143
    :cond_9
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    const/4 v1, 0x0

    # setter for: Lbl/aef4;->h:Z
    invoke-static {v0, v1}, Lbl/aef4;->access$302(Lbl/aef4;Z)Z

    .line 144
    iget-object v0, p0, Lbl/aef4$a;->this$0:Lbl/aef4;

    invoke-virtual {v0}, Lbl/aef4;->k()V

    goto :goto_8
.end method
