.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;
.super Ljava/lang/Object;
.source "HistoryVideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->showDeleteDialog(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

.field final synthetic val$video:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;->val$video:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;->val$video:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->deleteHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 389
    return-void
.end method
