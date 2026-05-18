.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;
.super Lbl/vn;
.source "RelationTagMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->loadRelationTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

.field final synthetic val$apiService:Lmybl/MyBiliApiService;

.field final synthetic val$cookie:Ljava/lang/String;

.field final synthetic val$csrf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$cookie:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$csrf:Ljava/lang/String;

    iput-object p4, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$apiService:Lmybl/MyBiliApiService;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_5c

    .line 148
    const-string v0, "RelationTagMenuDialog"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v0, "attribute"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 151
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    const/4 v0, 0x2

    if-eq v2, v0, :cond_16

    const/4 v0, 0x6

    if-ne v2, v0, :cond_5d

    :cond_16
    const/4 v0, 0x1

    :goto_17
    # setter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$202(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Z)Z

    .line 152
    const-string v0, "RelationTagMenuDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User follow status - attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFollowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z
    invoke-static {v3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$200(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$200(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 155
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "User not followed, follow first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$cookie:Ljava/lang/String;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$csrf:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$apiService:Lmybl/MyBiliApiService;

    # invokes: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->followUserThenLoadTags(Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$300(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V

    .line 171
    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    move v0, v1

    .line 151
    goto :goto_17

    .line 158
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const-string v2, "tag"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lez v3, :cond_86

    .line 161
    :goto_72
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_8f

    .line 162
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getLongValue(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 165
    :cond_86
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_8f
    const-string v1, "RelationTagMenuDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User current tag IDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$cookie:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$apiService:Lmybl/MyBiliApiService;

    # invokes: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->loadRelationTagsWithSelection(Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V
    invoke-static {v1, v2, v3, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$400(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V

    goto :goto_5c
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 180
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Failed to get user relation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$202(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Z)Z

    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$cookie:Ljava/lang/String;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$csrf:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$apiService:Lmybl/MyBiliApiService;

    # invokes: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->followUserThenLoadTags(Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$300(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V

    .line 183
    return-void
.end method
