.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V
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
    .line 654
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 657
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6574\u7406\u4e66\u67b6: \u5207\u6362\u9009\u4e2d\u72b6\u6001 position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v0

    if-eqz v0, :cond_4c

    if-ltz p3, :cond_4c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_4c

    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v1

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    :goto_3c
    aput-boolean v0, v1, p3

    .line 660
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 661
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateOrganizeButtonsState()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 663
    :cond_4c
    return-void

    .line 659
    :cond_4d
    const/4 v0, 0x0

    goto :goto_3c
.end method
