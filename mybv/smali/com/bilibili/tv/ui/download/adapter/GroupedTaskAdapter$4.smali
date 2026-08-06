.class Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;
.super Ljava/lang/Object;
.source "GroupedTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->bindTask(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->taskListener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->access$200(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->taskListener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->access$200(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;->onTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 372
    :cond_13
    return-void
.end method
