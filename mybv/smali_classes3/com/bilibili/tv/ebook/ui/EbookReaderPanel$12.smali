.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfInPanel()V
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
    .line 1116
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1120
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u67b6\u5217\u8868\u5df2\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void
.end method
