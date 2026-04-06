.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 435
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_1a

    .line 436
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 439
    :cond_1a
    return-void
.end method
