.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

.field final synthetic val$chapterList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->val$chapterList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->val$chapterList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2183
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u70b9\u51fb\u7ae0\u8282: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", depth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 2187
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    .line 2189
    const-string v2, "EbookReader"

    const-string v3, "\u7ae0\u8282\u6709\u5b50\u7ae0\u8282\uff0c\u663e\u793a\u5b50\u7ae0\u8282\u5217\u8868"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/Stack;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v3, v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$802(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)Ljava/util/List;

    .line 2192
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3102(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 2193
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V

    .line 2200
    :goto_73
    return-void

    .line 2196
    :cond_74
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8df3\u8f6c\u5230\u7ae0\u8282: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    invoke-static {v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 2198
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    goto :goto_73
.end method
