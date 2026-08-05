.class Lcom/bilibili/tv/ui/download/DownloadedFragment$2;
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
    .line 87
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # setter for: Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$002(Lcom/bilibili/tv/ui/download/DownloadedFragment;I)I

    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$200(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 93
    return-void
.end method

.method public onTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$300(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method
