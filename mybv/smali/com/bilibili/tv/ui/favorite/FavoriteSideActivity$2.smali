.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;
.super Lbl/vn;
.source "FavoriteSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCollectionFolders()V
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
    .line 260
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    if-eqz p1, :cond_35

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 265
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 266
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 267
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lbl/CollectionFavoriteFolder;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lbl/CollectionFavoriteFolder;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 270
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$402(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z

    .line 271
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 272
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$402(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 283
    return-void
.end method
