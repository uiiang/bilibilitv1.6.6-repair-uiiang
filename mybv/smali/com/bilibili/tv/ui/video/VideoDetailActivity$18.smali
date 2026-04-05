.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;
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
    .line 1848
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;->val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    .line 1851
    if-nez p1, :cond_3

    .line 1877
    :goto_2
    return-void

    .line 1855
    :cond_3
    const-string v0, "like"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 1856
    const-string v0, "favorite"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    .line 1857
    const-string v0, "coin"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 1859
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;->val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 1860
    if-nez v0, :cond_24

    .line 1861
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;-><init>()V

    .line 1862
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;->val$finalDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 1864
    :cond_24
    iput-boolean v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    .line 1865
    iput-boolean v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    .line 1866
    if-lez v3, :cond_38

    const/4 v1, 0x1

    :goto_2b
    iput-boolean v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    .line 1868
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1866
    :cond_38
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1848
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1881
    return-void
.end method
