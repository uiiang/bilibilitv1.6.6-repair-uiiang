.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;
.super Lbl/vm;
.source "FavoriteMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->loadFavoriteFolders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vm",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

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
    .line 198
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "Failed to load favorite folders"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    return-void
.end method

.method public onSuccess(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .prologue
    .line 153
    if-eqz p1, :cond_45

    .line 154
    const-string v0, "FavoriteMenuDialog"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 157
    if-nez v0, :cond_46

    .line 158
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_45

    .line 160
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmybl/FavoriteFolder;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_45

    .line 162
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 163
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    :cond_45
    :goto_45
    return-void

    .line 186
    :cond_46
    const-string v0, "FavoriteMenuDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->onSuccess(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
