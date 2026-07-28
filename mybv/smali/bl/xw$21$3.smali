.class Lbl/xw$21$3;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$21;

.field final synthetic val$chapterTitles:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/xw$21;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iput-object p2, p0, Lbl/xw$21$3;->val$chapterTitles:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1851
    iget-object v0, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iget-object v0, v0, Lbl/xw$21;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v0}, Lbl/xw;->access$1800(Lbl/xw;)I

    move-result v0

    if-ltz v0, :cond_4d

    iget-object v0, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iget-object v0, v0, Lbl/xw$21;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v0}, Lbl/xw;->access$1800(Lbl/xw;)I

    move-result v0

    iget-object v1, p0, Lbl/xw$21$3;->val$chapterTitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 1852
    iget-object v0, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iget-object v0, v0, Lbl/xw$21;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1700(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iget-object v1, v1, Lbl/xw$21;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v1}, Lbl/xw;->access$1800(Lbl/xw;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1853
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u6eda\u52a8\u5230\u5f53\u524d\u7ae0\u8282: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iget-object v2, v2, Lbl/xw$21;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v2}, Lbl/xw;->access$1800(Lbl/xw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_4d
    iget-object v0, p0, Lbl/xw$21$3;->this$1:Lbl/xw$21;

    iget-object v0, v0, Lbl/xw$21;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1700(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1858
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u5df2\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    return-void
.end method
