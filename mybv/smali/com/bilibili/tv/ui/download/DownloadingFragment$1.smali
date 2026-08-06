.class Lcom/bilibili/tv/ui/download/DownloadingFragment$1;
.super Ljava/lang/Object;
.source "DownloadingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadingFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    :cond_8
    :goto_8
    return-void

    .line 79
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->access$000(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->access$100(Lcom/bilibili/tv/ui/download/DownloadingFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_8

    .line 84
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingFragment$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment$1$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
