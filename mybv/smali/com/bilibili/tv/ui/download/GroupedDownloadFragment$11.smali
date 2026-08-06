.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$11;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
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
    .line 561
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$11;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$11;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$200(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    .line 565
    return-void
.end method
