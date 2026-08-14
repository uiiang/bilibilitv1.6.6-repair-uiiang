.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showRemoveBookDialog(Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V
    .locals 0

    .prologue
    .line 3954
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    iput p3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 3959
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->clearReadingProgress(Ljava/lang/String;)V

    .line 3960
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6e05\u9664\u9605\u8bfb\u8fdb\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteBookCacheFiles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$4000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V

    .line 3967
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 3968
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->removeFromBookshelf(Ljava/lang/String;)V

    .line 3969
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u4ece\u4e66\u67b6\u79fb\u9664: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    :cond_7d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a2

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$position:I

    if-ltz v0, :cond_a2

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$position:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a2

    .line 3974
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3978
    :cond_a2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 3981
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5220\u9664: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 3983
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 3984
    return-void
.end method
