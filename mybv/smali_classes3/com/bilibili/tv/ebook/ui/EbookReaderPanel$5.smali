.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showChapterList()V
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
    .line 461
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V

    .line 465
    return-void
.end method
