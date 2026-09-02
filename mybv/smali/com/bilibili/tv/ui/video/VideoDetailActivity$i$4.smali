.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$staffMid:J

.field final synthetic val$staffName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5243
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffMid:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 5247
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v4

    .line 5248
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v0

    .line 5249
    :goto_11
    if-eqz v4, :cond_3d

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 5250
    :goto_15
    if-eqz v4, :cond_19

    iget-object v7, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 5251
    :cond_19
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v4, v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    .line 5252
    cmp-long v8, v0, v2

    if-lez v8, :cond_3f

    iget-wide v8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffMid:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_3f

    cmp-long v0, v4, v2

    if-lez v0, :cond_3f

    .line 5253
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffMid:J

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 5257
    :goto_3a
    return-void

    :cond_3b
    move-wide v0, v2

    .line 5248
    goto :goto_11

    :cond_3d
    move-object v6, v7

    .line 5249
    goto :goto_15

    .line 5255
    :cond_3f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffMid:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$staffName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_3a
.end method
