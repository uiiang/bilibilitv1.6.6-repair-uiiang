.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$40;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 4454
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$40;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$40;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 4458
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$40;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$4902(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4459
    return-void
.end method
