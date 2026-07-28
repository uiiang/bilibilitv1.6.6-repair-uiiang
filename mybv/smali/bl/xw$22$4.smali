.class Lbl/xw$22$4;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$22;


# direct methods
.method constructor <init>(Lbl/xw$22;)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Lbl/xw$22$4;->this$1:Lbl/xw$22;

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
    .line 1914
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u70b9\u51fb\u7ae0\u8282: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v0, p0, Lbl/xw$22$4;->this$1:Lbl/xw$22;

    iget-object v0, v0, Lbl/xw$22;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v0}, Lbl/xw;->access$1600(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1918
    iget-object v0, p0, Lbl/xw$22$4;->this$1:Lbl/xw$22;

    iget-object v0, v0, Lbl/xw$22;->this$0:Lbl/xw;

    iget-object v1, p0, Lbl/xw$22$4;->this$1:Lbl/xw$22;

    iget-object v1, v1, Lbl/xw$22;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v1}, Lbl/xw;->access$1600(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    # invokes: Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    invoke-static {v0, v1, p3}, Lbl/xw;->access$1900(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 1922
    :cond_31
    iget-object v0, p0, Lbl/xw$22$4;->this$1:Lbl/xw$22;

    iget-object v0, v0, Lbl/xw$22;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideChapterList()V
    invoke-static {v0}, Lbl/xw;->access$2000(Lbl/xw;)V

    .line 1923
    return-void
.end method
