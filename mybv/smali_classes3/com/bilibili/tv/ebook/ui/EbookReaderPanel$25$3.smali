.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->val$chapterList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2229
    const/4 v2, -0x1

    .line 2230
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->val$chapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    .line 2231
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->val$chapterList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2232
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v3, v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I

    move-result v3

    if-ne v0, v3, :cond_59

    .line 2239
    :goto_21
    if-ltz v1, :cond_46

    .line 2240
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2241
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282\u5217\u8868\u5df2\u6eda\u52a8\u5230\u5f53\u524d\u7ae0\u8282\u4f4d\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_46
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 2246
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u5df2\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    return-void

    .line 2230
    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5d
    move v1, v2

    goto :goto_21
.end method
