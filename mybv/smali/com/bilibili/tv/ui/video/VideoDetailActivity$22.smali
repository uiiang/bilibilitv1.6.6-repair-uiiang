.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .prologue
    .line 2168
    if-nez p1, :cond_3

    .line 2198
    :goto_2
    return-void

    .line 2172
    :cond_3
    const-string v0, "like"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 2173
    const-string v0, "favorite"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    .line 2174
    const-string v0, "coin"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 2176
    const-string v0, "season_fav"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 2178
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 2179
    if-nez v0, :cond_2a

    .line 2180
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;-><init>()V

    .line 2181
    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v0, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 2183
    :cond_2a
    iput-boolean v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    .line 2184
    iput-boolean v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    .line 2185
    if-lez v3, :cond_43

    const/4 v1, 0x1

    :goto_31
    iput-boolean v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    .line 2186
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z
    invoke-static {v0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 2188
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2185
    :cond_43
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2165
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2202
    return-void
.end method
