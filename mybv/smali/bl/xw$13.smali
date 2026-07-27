.class Lbl/xw$13;
.super Landroid/webkit/WebViewClient;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lbl/xw$13;->this$0:Lbl/xw;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1290
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1292
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v0, Lbl/xw$13$1;

    invoke-direct {v0, p0, p1}, Lbl/xw$13$1;-><init>(Lbl/xw$13;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 1307
    return-void
.end method
