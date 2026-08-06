.class Lcom/bilibili/tv/ui/download/DownloadingFragment$1$1;
.super Ljava/lang/Object;
.source "DownloadingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/download/DownloadingFragment$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadingFragment$1;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadingFragment;->restoreFocus()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->access$200(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    .line 91
    :cond_11
    return-void
.end method
