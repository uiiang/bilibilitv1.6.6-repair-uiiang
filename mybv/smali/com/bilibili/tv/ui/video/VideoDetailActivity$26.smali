.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$staffMid:J

.field final synthetic val$staffName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2841
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffMid:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 2845
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v4

    .line 2846
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v0

    .line 2847
    :goto_f
    if-eqz v4, :cond_37

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2848
    :goto_13
    if-eqz v4, :cond_17

    iget-object v7, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 2849
    :cond_17
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    .line 2850
    cmp-long v8, v0, v2

    if-lez v8, :cond_39

    iget-wide v8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffMid:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_39

    cmp-long v0, v4, v2

    if-lez v0, :cond_39

    .line 2851
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffMid:J

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2855
    :goto_34
    return-void

    :cond_35
    move-wide v0, v2

    .line 2846
    goto :goto_f

    :cond_37
    move-object v6, v7

    .line 2847
    goto :goto_13

    .line 2853
    :cond_39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffMid:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$staffName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_34
.end method
