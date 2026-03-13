.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;
.super Lbl/vn;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadHistoryDataInternal()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 242
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

    .line 244
    if-nez p1, :cond_2d

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$202(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 246
    const-string v0, "HistoryVideoFragment"

    const-string v1, "\u54cd\u5e94\u4e3anull\uff0c\u8bbe\u7f6ehasMore=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2c
    :goto_2c
    return-void

    .line 250
    :cond_2d
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_181

    .line 252
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v3, "max"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$302(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 253
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v3, "view_at"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$402(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 254
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v3, "business"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$502(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$202(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 256
    const-string v0, "HistoryVideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor\u4fe1\u606f: max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$300(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view_at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", business="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasMore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_aa
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 263
    const-string v3, "HistoryVideoFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list\u6570\u7ec4\u5927\u5c0f: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_18f

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_c7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz v2, :cond_210

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_210

    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videos:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 268
    if-eqz v3, :cond_f6

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videos:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    const-string v0, "HistoryVideoFragment"

    const-string v4, "\u9996\u6b21\u52a0\u8f7d\uff0c\u6e05\u7a7avideos\u5217\u8868"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    move v0, v1

    .line 273
    :goto_f7
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_193

    .line 274
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 275
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 276
    const-string v5, "title"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 277
    const-string v5, "cover"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 278
    const-string v5, "view_at"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    .line 279
    const-string v5, "progress"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 280
    const-string v5, "duration"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 281
    const-string v5, "show_title"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mShowTitle:Ljava/lang/String;

    .line 283
    const-string v5, "history"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_14e

    .line 285
    const-string v5, "oid"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 286
    const-string v5, "business"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBusinessType:Ljava/lang/String;

    .line 289
    :cond_14e
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videos:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v1, "HistoryVideoFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6dfb\u52a0\u5386\u53f2\u8bb0\u5f55: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", avid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f7

    .line 258
    :cond_181
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$202(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 259
    const-string v0, "HistoryVideoFragment"

    const-string v2, "cursor\u4e3anull\uff0c\u8bbe\u7f6ehasMore=false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 263
    :cond_18f
    const-string v0, "null"

    goto/16 :goto_c7

    .line 293
    :cond_193
    const-string v0, "HistoryVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u5b8c\u6210, videos.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videos:Ljava/util/List;
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasMore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFirstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1fd

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->videos:Ljava/util/List;
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_1fd
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$800(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$800(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->d()V

    goto/16 :goto_2c

    .line 303
    :cond_210
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$202(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 304
    const-string v0, "HistoryVideoFragment"

    const-string v1, "list\u4e3a\u7a7a\uff0c\u8bbe\u7f6ehasMore=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

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
    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 235
    const-string v0, "HistoryVideoFragment"

    const-string v1, "\u52a0\u8f7d\u5386\u53f2\u8bb0\u5f55\u5931\u8d25"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 237
    return-void
.end method
