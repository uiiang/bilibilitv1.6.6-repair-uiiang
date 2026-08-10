.class Lbl/xw$33;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->showRemoveBookDialog(Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lbl/xw;Lcom/bilibili/tv/ebook/model/BookshelfItem;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 3746
    iput-object p1, p0, Lbl/xw$33;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    iput p3, p0, Lbl/xw$33;->val$position:I

    iput-object p4, p0, Lbl/xw$33;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3750
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 3751
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v0

    iget-object v1, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->clearReadingProgress(Ljava/lang/String;)V

    .line 3752
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6e05\u9664\u9605\u8bfb\u8fdb\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_3d
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    iget-object v1, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lbl/xw;->deleteBookCacheFiles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lbl/xw;->access$4100(Lbl/xw;Ljava/lang/String;)V

    .line 3759
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lbl/xw;->access$3900(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 3760
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lbl/xw;->access$3900(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    iget-object v1, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->removeFromBookshelf(Ljava/lang/String;)V

    .line 3761
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u4ece\u4e66\u67b6\u79fb\u9664: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_7d
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lbl/xw;->access$1000(Lbl/xw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a2

    iget v0, p0, Lbl/xw$33;->val$position:I

    if-ltz v0, :cond_a2

    iget v0, p0, Lbl/xw$33;->val$position:I

    iget-object v1, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v1}, Lbl/xw;->access$1000(Lbl/xw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a2

    .line 3766
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lbl/xw;->access$1000(Lbl/xw;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lbl/xw$33;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3770
    :cond_a2
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->showBookshelfOrFileChooser()V
    invoke-static {v0}, Lbl/xw;->access$4000(Lbl/xw;)V

    .line 3773
    iget-object v0, p0, Lbl/xw$33;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5220\u9664: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$33;->val$item:Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3775
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 3776
    return-void
.end method
