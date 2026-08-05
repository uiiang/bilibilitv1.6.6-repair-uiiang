.class Lcom/bilibili/tv/ui/download/DownloadingFragment$1;
.super Ljava/lang/Object;
.source "DownloadingFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadingFragment;->setupRecyclerView()V
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
.method public onTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadingFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->access$000(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 77
    return-void
.end method

.method public onTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadingFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->access$100(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method
