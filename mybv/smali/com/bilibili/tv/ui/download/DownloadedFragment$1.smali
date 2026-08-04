.class Lcom/bilibili/tv/ui/download/DownloadedFragment$1;
.super Ljava/lang/Object;
.source "DownloadedFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadedFragment;->setupRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$000(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 76
    return-void
.end method

.method public onTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$100(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
