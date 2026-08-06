.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3$1;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3$1;->this$1:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3$1;->this$1:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3$1;->this$1:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->restoreFocus()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$400(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    .line 109
    :cond_11
    return-void
.end method
