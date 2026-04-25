.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;
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

    .prologue
    .line 2605
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$staffMid:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$staffName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$staffMid:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$staffName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    .line 2609
    return-void
.end method
