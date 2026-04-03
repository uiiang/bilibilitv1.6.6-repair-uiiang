.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->loadRelatedVideosAndTags()V
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
        "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V
    .locals 0

    .prologue
    .line 4138
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4138
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 4159
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4160
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4161
    if-eqz v0, :cond_18

    .line 4162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4164
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4165
    if-eqz v0, :cond_25

    .line 4166
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 4182
    :cond_25
    :goto_25
    return-void

    .line 4171
    :cond_26
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4172
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 4174
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4175
    if-eqz v0, :cond_5a

    .line 4176
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4178
    :cond_5a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4179
    if-eqz v0, :cond_25

    .line 4180
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_25
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 4141
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 4146
    const-string v0, "VideoDetailApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRelatedVideos error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4148
    if-eqz v0, :cond_2b

    .line 4149
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4151
    :cond_2b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4152
    if-eqz v0, :cond_38

    .line 4153
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 4155
    :cond_38
    return-void
.end method
