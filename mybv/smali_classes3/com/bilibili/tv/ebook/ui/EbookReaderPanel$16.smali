.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$selectedItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 877
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->val$selectedItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 880
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->val$selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    .line 882
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 883
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->clearReadingProgress(Ljava/lang/String;)V

    .line 884
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u6e05\u9664\u9605\u8bfb\u8fdb\u5ea6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_49
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteBookCacheFiles(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 890
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->removeFromBookshelf(Ljava/lang/String;)V

    .line 892
    :cond_67
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u4ece\u4e66\u67b6\u79fb\u9664: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 895
    :cond_84
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5220\u9664 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->val$selectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u672c\u4e66"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideOrganizeShelf()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 897
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 898
    return-void
.end method
