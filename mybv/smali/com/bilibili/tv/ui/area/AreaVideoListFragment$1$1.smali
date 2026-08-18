.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

.field final synthetic val$videoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->val$videoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->val$videoList:Ljava/util/List;

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->val$videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->val$videoList:Ljava/util/List;

    # invokes: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->convertToContentList(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$200(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-boolean v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->val$isLoadMore:Z

    if-nez v1, :cond_33

    .line 153
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$300(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 154
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ogvList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$400(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    :cond_33
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$500(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$600(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 162
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$700(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->d()V

    .line 166
    :cond_53
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$802(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 167
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$902(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 169
    const-string v1, "AreaVideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " videos"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->val$isLoadMore:Z

    if-nez v0, :cond_103

    .line 173
    const-string v0, "AreaVideoListFragment"

    const-string v1, "========== Requesting focus for first video card =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v1, "AreaVideoListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutManager: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1100(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_b7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v1, "AreaVideoListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1200(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    move-result-object v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1300(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_e9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_103
    :goto_103
    return-void

    .line 174
    :cond_104
    const-string v0, "null"

    goto :goto_b7

    .line 175
    :cond_107
    const-string v0, "null"

    goto :goto_e9

    .line 204
    :cond_10a
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1802(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1902(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 206
    const-string v0, "AreaVideoListFragment"

    const-string v1, "No videos loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103
.end method
