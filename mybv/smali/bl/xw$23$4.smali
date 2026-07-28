.class Lbl/xw$23$4;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$23;

.field final synthetic val$chapterList:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/xw$23;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2188
    iput-object p1, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iput-object p2, p0, Lbl/xw$23$4;->val$chapterList:Ljava/util/List;

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
    .line 2191
    iget-object v0, p0, Lbl/xw$23$4;->val$chapterList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2192
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

    .line 2195
    iget-object v1, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v1, v1, Lbl/xw$23;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    invoke-static {v1, v0}, Lbl/xw;->access$2100(Lbl/xw;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 2196
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    .line 2198
    const-string v2, "EbookReader"

    const-string v3, "\u7ae0\u8282\u6709\u5b50\u7ae0\u8282\uff0c\u663e\u793a\u5b50\u7ae0\u8282\u5217\u8868"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v2, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v2, v2, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;
    invoke-static {v2}, Lbl/xw;->access$2300(Lbl/xw;)Ljava/util/Stack;

    move-result-object v2

    iget-object v3, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v3, v3, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterList:Ljava/util/List;
    invoke-static {v3}, Lbl/xw;->access$1600(Lbl/xw;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    iget-object v2, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v2, v2, Lbl/xw$23;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->currentChapterList:Ljava/util/List;
    invoke-static {v2, v1}, Lbl/xw;->access$1602(Lbl/xw;Ljava/util/List;)Ljava/util/List;

    .line 2201
    iget-object v2, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v2, v2, Lbl/xw$23;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    # setter for: Lbl/xw;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v2, v0}, Lbl/xw;->access$1902(Lbl/xw;Ljava/lang/String;)Ljava/lang/String;

    .line 2202
    iget-object v0, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v0, v0, Lbl/xw$23;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->createChapterListView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lbl/xw;->access$1700(Lbl/xw;Ljava/util/List;)V

    .line 2209
    :goto_73
    return-void

    .line 2205
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

    .line 2206
    iget-object v1, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v1, v1, Lbl/xw$23;->this$0:Lbl/xw;

    iget-object v2, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v2, v2, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v2}, Lbl/xw;->access$2400(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    # invokes: Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    invoke-static {v1, v2, v0}, Lbl/xw;->access$2500(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 2207
    iget-object v0, p0, Lbl/xw$23$4;->this$1:Lbl/xw$23;

    iget-object v0, v0, Lbl/xw$23;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideChapterList()V
    invoke-static {v0}, Lbl/xw;->access$2600(Lbl/xw;)V

    goto :goto_73
.end method
