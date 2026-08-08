.class Lcom/bilibili/tv/ui/download/DownloadingFragment$4;
.super Ljava/lang/Object;
.source "DownloadingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshDownloadingList()V
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
    .line 209
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadingFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->access$000(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    .line 215
    :cond_d
    return-void
.end method
