.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d$1;
.super Ljava/lang/Object;
.source "HistoryVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 476
    instance-of v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_15

    .line 477
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 478
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->fragment:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->access$1000(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->showDeleteDialog(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 479
    const/4 v0, 0x1

    .line 481
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
