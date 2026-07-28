.class Lbl/xw$23$3;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2040
    iput-object p1, p0, Lbl/xw$23$3;->this$1:Lbl/xw$23;

    iput-object p2, p0, Lbl/xw$23$3;->val$chapterList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2044
    const/4 v2, -0x1

    .line 2045
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lbl/xw$23$3;->val$chapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    .line 2046
    iget-object v0, p0, Lbl/xw$23$3;->val$chapterList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2047
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    iget-object v3, p0, Lbl/xw$23$3;->this$1:Lbl/xw$23;

    iget-object v3, v3, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v3}, Lbl/xw;->access$2100(Lbl/xw;)I

    move-result v3

    if-ne v0, v3, :cond_59

    .line 2054
    :goto_21
    if-ltz v1, :cond_46

    .line 2055
    iget-object v0, p0, Lbl/xw$23$3;->this$1:Lbl/xw$23;

    iget-object v0, v0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2056
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

    .line 2060
    :cond_46
    iget-object v0, p0, Lbl/xw$23$3;->this$1:Lbl/xw$23;

    iget-object v0, v0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 2061
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u5df2\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    return-void

    .line 2045
    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5d
    move v1, v2

    goto :goto_21
.end method
