.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;
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
    .line 81
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    .line 87
    :cond_d
    return-void
.end method
