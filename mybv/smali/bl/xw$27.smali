.class Lbl/xw$27;
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
    .line 2753
    iput-object p1, p0, Lbl/xw$27;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$27;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2757
    iget-object v0, p0, Lbl/xw$27;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lbl/xw;->access$2800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2758
    iget-object v0, p0, Lbl/xw$27;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;
    invoke-static {v0}, Lbl/xw;->access$2800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->clearBookshelf()V

    .line 2759
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u67b6\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_18
    iget-object v0, p0, Lbl/xw$27;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lbl/xw;->access$600(Lbl/xw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2764
    iget-object v0, p0, Lbl/xw$27;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lbl/xw;->access$600(Lbl/xw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2768
    :cond_29
    iget-object v0, p0, Lbl/xw$27;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->showBookshelfOrFileChooser()V
    invoke-static {v0}, Lbl/xw;->access$2900(Lbl/xw;)V

    .line 2771
    iget-object v0, p0, Lbl/xw$27;->val$activity:Landroid/app/Activity;

    const-string v1, "\u4e66\u67b6\u5df2\u6e05\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2773
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 2774
    return-void
.end method
