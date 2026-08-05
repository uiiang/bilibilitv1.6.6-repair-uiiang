.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;


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
    .line 62
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->openGroupDetail(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$000(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    .line 66
    return-void
.end method
