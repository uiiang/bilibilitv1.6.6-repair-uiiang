.class Lbl/xw$31;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->clearBookshelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lbl/xw;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 3562
    iput-object p1, p0, Lbl/xw$31;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$31;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3566
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3567
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->clearAllReadingProgress()V

    .line 3568
    const-string v0, "EbookReader"

    const-string v1, "\u6240\u6709\u9605\u8bfb\u8fdb\u5ea6\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    :cond_18
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lbl/xw;->access$3900(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3573
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lbl/xw;->access$3900(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->clearBookshelf()V

    .line 3574
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u67b6\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :cond_30
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lbl/xw;->access$1000(Lbl/xw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 3579
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lbl/xw;->access$1000(Lbl/xw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3583
    :cond_41
    iget-object v0, p0, Lbl/xw$31;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->showBookshelfOrFileChooser()V
    invoke-static {v0}, Lbl/xw;->access$4000(Lbl/xw;)V

    .line 3586
    iget-object v0, p0, Lbl/xw$31;->val$activity:Landroid/app/Activity;

    const-string v1, "\u4e66\u67b6\u5df2\u6e05\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3588
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 3589
    return-void
.end method
