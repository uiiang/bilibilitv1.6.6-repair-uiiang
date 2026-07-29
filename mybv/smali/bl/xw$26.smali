.class Lbl/xw$26;
.super Landroid/webkit/WebViewClient;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$restorePage:I

.field final synthetic val$scrollToBottom:Z


# direct methods
.method constructor <init>(Lbl/xw;ZI)V
    .locals 0

    .prologue
    .line 2374
    iput-object p1, p0, Lbl/xw$26;->this$0:Lbl/xw;

    iput-boolean p2, p0, Lbl/xw$26;->val$scrollToBottom:Z

    iput p3, p0, Lbl/xw$26;->val$restorePage:I

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2377
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2379
    new-instance v0, Lbl/xw$26$1;

    invoke-direct {v0, p0, p1}, Lbl/xw$26$1;-><init>(Lbl/xw$26;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 2420
    return-void
.end method
