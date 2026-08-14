.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;
.super Landroid/webkit/WebViewClient;
.source "EbookReaderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$finalRestorePage:I

.field final synthetic val$finalScrollToBottom:Z


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;ZI)V
    .locals 0

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-boolean p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalScrollToBottom:Z

    iput p3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalRestorePage:I

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1877
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1879
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 1920
    return-void
.end method
