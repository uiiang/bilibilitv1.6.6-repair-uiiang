.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;
.super Lbl/vn;
.source "FavoriteSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadVideoFolders()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    if-eqz p1, :cond_5e

    .line 214
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 216
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5e

    .line 217
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 218
    new-instance v3, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-direct {v3}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;-><init>()V

    .line 219
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMId(J)V

    .line 220
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMName(Ljava/lang/String;)V

    .line 221
    const-string v4, "media_count"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMCount(I)V

    .line 222
    const-string v4, "mid"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMMid(J)V

    .line 223
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lbl/VideoFavoriteFolder;

    invoke-direct {v4, v3}, Lbl/VideoFavoriteFolder;-><init>(Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 227
    :cond_5e
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 229
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 241
    return-void
.end method
