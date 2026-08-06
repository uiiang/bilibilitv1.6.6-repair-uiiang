.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    .line 112
    :cond_8
    :goto_8
    return-void

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$200(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # getter for: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$300(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3$1;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
