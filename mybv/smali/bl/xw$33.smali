.class Lbl/xw$33;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->startProgressSaveTimer()V
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
    .line 3632
    iput-object p1, p0, Lbl/xw$33;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3635
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->isReadingBook:Z
    invoke-static {v0}, Lbl/xw;->access$3500(Lbl/xw;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v0}, Lbl/xw;->access$2900(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$400(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3636
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->saveReadingProgress()V
    invoke-static {v0}, Lbl/xw;->access$3600(Lbl/xw;)V

    .line 3637
    const-string v0, "EbookReader"

    const-string v1, "\u5b9a\u65f6\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_24
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->isProgressSaving:Z
    invoke-static {v0}, Lbl/xw;->access$3700(Lbl/xw;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->progressSaveHandler:Landroid/os/Handler;
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 3641
    iget-object v0, p0, Lbl/xw$33;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->progressSaveHandler:Landroid/os/Handler;
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3643
    :cond_3f
    return-void
.end method
