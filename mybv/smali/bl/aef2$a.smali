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
    .line 144
    iput-object p1, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lbl/aef2;Lbl/aef2$1;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lbl/aef2$a;-><init>(Lbl/aef2;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    if-nez v0, :cond_b

    .line 170
    :goto_a
    return-void

    .line 152
    :cond_b
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->j()V

    .line 153
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # setter for: Lbl/aef2;->h:Z
    invoke-static {v0, v2}, Lbl/aef2;->access$302(Lbl/aef2;Z)Z

    .line 154
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    invoke-virtual {v0}, Lbl/aef2$b;->a()I

    move-result v0

    if-nez v0, :cond_2b

    if-eqz p1, :cond_5c

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 155
    :cond_2b
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->f:I
    invoke-static {v0}, Lbl/aef2;->access$600(Lbl/aef2;)I

    move-result v0

    if-ne v0, v3, :cond_52

    .line 158
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbl/aef2$b;->a(Ljava/util/List;)V

    goto :goto_a

    .line 161
    :cond_52
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbl/aef2$b;->b(Ljava/util/List;)V

    goto :goto_a

    .line 165
    :cond_5c
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->f:I
    invoke-static {v0}, Lbl/aef2;->access$600(Lbl/aef2;)I

    move-result v0

    if-ne v0, v3, :cond_71

    .line 166
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->l()V

    .line 167
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lbl/aef2;->a(I)V

    .line 169
    :cond_71
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # setter for: Lbl/aef2;->g:Z
    invoke-static {v0, v2}, Lbl/aef2;->access$202(Lbl/aef2;Z)Z

    goto :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lbl/aef2$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 174
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
    .line 179
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->c:Lbl/aef2$b;
    invoke-static {v0}, Lbl/aef2;->access$400(Lbl/aef2;)Lbl/aef2$b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 186
    :cond_8
    :goto_8
    return-void

    .line 182
    :cond_9
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    const/4 v1, 0x0

    # setter for: Lbl/aef2;->h:Z
    invoke-static {v0, v1}, Lbl/aef2;->access$302(Lbl/aef2;Z)Z

    .line 183
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    # getter for: Lbl/aef2;->f:I
    invoke-static {v0}, Lbl/aef2;->access$600(Lbl/aef2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 184
    iget-object v0, p0, Lbl/aef2$a;->this$0:Lbl/aef2;

    invoke-virtual {v0}, Lbl/aef2;->k()V

    goto :goto_8
.end method
