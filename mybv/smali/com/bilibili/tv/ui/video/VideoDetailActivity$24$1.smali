.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$24$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

.field final synthetic val$relatedList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24$1;->val$relatedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2291
    :goto_a
    return-void

    .line 2290
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24$1;->val$relatedList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createRelateVideoSectionView(Ljava/util/List;)V

    goto :goto_a
.end method
