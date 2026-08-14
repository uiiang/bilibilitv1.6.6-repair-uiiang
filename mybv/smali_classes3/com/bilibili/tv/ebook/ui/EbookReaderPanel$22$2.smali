.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;

.field final synthetic val$finalBook:Lcom/bilibili/tv/ebook/model/Book;

.field final synthetic val$finalPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->val$finalPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->val$finalBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->val$finalPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->val$finalPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1656
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->val$finalPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22$2;->val$finalBook:Lcom/bilibili/tv/ebook/model/Book;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;)V

    .line 1658
    :cond_1b
    return-void
.end method
