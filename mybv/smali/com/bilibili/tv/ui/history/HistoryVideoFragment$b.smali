.class public final Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;
.super Lbl/vn;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 185
    const-string v0, "HistoryVideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5386\u53f2\u8bb0\u5f55\u63a5\u53e3\u8fd4\u56de\u6570\u636e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_19d

    .line 187
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_17a

    .line 189
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v3, "max"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$602(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 190
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v3, "view_at"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$702(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 191
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v3, "business"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$802(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 193
    const-string v0, "HistoryVideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor\u4fe1\u606f: max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view_at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", business="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$800(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_8d
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 200
    const-string v3, "HistoryVideoFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list\u6570\u7ec4\u5927\u5c0f: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_188

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_aa
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v2, :cond_1d8

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d8

    .line 202
    :goto_bd
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_18c

    .line 203
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 204
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 205
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 206
    const-string v4, "cover"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 207
    const-string v4, "view_at"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    .line 208
    const-string v4, "progress"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 209
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 210
    const-string v4, "show_title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mShowTitle:Ljava/lang/String;

    .line 212
    const-string v4, "history"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 213
    if-eqz v4, :cond_146

    .line 214
    const-string v5, "oid"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 215
    const-string v5, "business"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    .line 216
    const-string v4, "pgc"

    iget-object v5, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 217
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 218
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 219
    const-string v6, "season_id"

    const-string v7, "kid"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "season"

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 225
    :cond_146
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videoList:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$900(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v0, "HistoryVideoFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6dfb\u52a0\u5386\u53f2\u8bb0\u5f55: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", avid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_bd

    .line 195
    :cond_17a
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 196
    const-string v0, "HistoryVideoFragment"

    const-string v2, "cursor\u4e3anull\uff0c\u6ca1\u6709\u66f4\u591a\u6570\u636e"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8d

    .line 200
    :cond_188
    const-string v0, "null"

    goto/16 :goto_aa

    .line 229
    :cond_18c
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    if-eqz v0, :cond_19d

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    .line 238
    :cond_19d
    :goto_19d
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-eqz v0, :cond_1ae

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 241
    :cond_1ae
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videoList:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$900(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-eqz v0, :cond_1d7

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 247
    :cond_1d7
    return-void

    .line 233
    :cond_1d8
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 234
    const-string v0, "HistoryVideoFragment"

    const-string v1, "list\u4e3a\u7a7a\u6216null\uff0c\u6ca1\u6709\u66f4\u591a\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 175
    const-string v0, "HistoryVideoFragment"

    const-string v1, "\u52a0\u8f7d\u5386\u53f2\u8bb0\u5f55\u5931\u8d25"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_16

    .line 180
    :goto_15
    return-void

    .line 179
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadingImageView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    goto :goto_15
.end method
