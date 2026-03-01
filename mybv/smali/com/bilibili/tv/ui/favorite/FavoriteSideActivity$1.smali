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
        "Ljava/util/List",
        "<",
        "Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    .line 172
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lbl/VideoFavoriteFolder;

    invoke-direct {v3, v0}, Lbl/VideoFavoriteFolder;-><init>(Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 175
    :cond_30
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 177
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z

    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 189
    return-void
.end method
