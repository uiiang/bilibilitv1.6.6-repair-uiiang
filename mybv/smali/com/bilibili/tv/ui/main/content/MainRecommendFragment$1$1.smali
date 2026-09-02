.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

.field final synthetic val$result:Lmybl/AppRecommendLoader$Result;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;Lmybl/AppRecommendLoader$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-nez v0, :cond_1e

    .line 161
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isPrefetch:Z

    if-eqz v0, :cond_17

    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchError()V

    .line 204
    :goto_16
    return-void

    .line 164
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto :goto_16

    .line 168
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    if-nez v0, :cond_59

    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[App\u63a8\u8350] \u52a0\u8f7d\u5931\u8d25 idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-wide v2, v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$startIdx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isPrefetch:Z

    if-eqz v0, :cond_52

    .line 171
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchError()V

    goto :goto_16

    .line 173
    :cond_52
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto :goto_16

    .line 178
    :cond_59
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-wide v0, v0, Lmybl/AppRecommendLoader$Result;->nextIdx:J

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFeedIdx:J
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(J)J

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-boolean v0, v0, Lmybl/AppRecommendLoader$Result;->end:Z

    if-eqz v0, :cond_70

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    .line 183
    :cond_70
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-object v0, v0, Lmybl/AppRecommendLoader$Result;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[App\u63a8\u8350] \u65e0\u65b0\u6570\u636e idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-wide v2, v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$startIdx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-boolean v2, v2, Lmybl/AppRecommendLoader$Result;->end:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isPrefetch:Z

    if-eqz v0, :cond_bd

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-object v1, v1, Lmybl/AppRecommendLoader$Result;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchSuccess(Ljava/util/List;)V

    goto/16 :goto_16

    .line 189
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto/16 :goto_16

    .line 193
    :cond_c5
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isPrefetch:Z

    if-eqz v0, :cond_d8

    .line 195
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-object v1, v1, Lmybl/AppRecommendLoader$Result;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchSuccess(Ljava/util/List;)V

    goto/16 :goto_16

    .line 198
    :cond_d8
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isLoadMore:Z

    if-eqz v0, :cond_f3

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-object v1, v1, Lmybl/AppRecommendLoader$Result;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->appendData(Ljava/util/List;)V

    .line 203
    :goto_eb
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto/16 :goto_16

    .line 201
    :cond_f3
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;->val$result:Lmybl/AppRecommendLoader$Result;

    iget-object v2, v2, Lmybl/AppRecommendLoader$Result;->contents:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    goto :goto_eb
.end method
