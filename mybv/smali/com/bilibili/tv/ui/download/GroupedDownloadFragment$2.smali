.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 72
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 76
    return-void
.end method
