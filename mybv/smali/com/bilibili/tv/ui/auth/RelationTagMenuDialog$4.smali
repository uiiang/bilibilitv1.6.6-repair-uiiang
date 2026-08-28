.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;
.super Lbl/vn;
.source "RelationTagMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->followUserThenLoadTags(Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V
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


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Lmybl/MyBiliApiService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$cookie:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$apiService:Lmybl/MyBiliApiService;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    .line 154
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Follow user success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$202(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Z)Z

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$cookie:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->val$apiService:Lmybl/MyBiliApiService;

    # invokes: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->loadRelationTagsWithSelection(Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V
    invoke-static {v1, v2, v3, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$400(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V

    .line 159
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 163
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
    .locals 2

    .prologue
    .line 168
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Follow user failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method
