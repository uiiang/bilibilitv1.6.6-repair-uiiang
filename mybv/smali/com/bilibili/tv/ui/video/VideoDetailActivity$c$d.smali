.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$d;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$d;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1470
    if-eqz p2, :cond_2e

    .line 1471
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$d;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 1473
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1474
    instance-of v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_2d

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1477
    instance-of v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v2, :cond_2d

    .line 1478
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1479
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v2

    .line 1480
    if-eqz v2, :cond_2d

    .line 1481
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1482
    if-ltz v1, :cond_2d

    .line 1483
    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 1491
    :cond_2d
    :goto_2d
    return-void

    .line 1489
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$d;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_2d
.end method
