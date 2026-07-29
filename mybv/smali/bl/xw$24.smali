.class Lbl/xw$24;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->parseAndDisplayEbook(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbl/xw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2059
    iput-object p1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$24;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2064
    :try_start_0
    new-instance v0, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;

    iget-object v1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    .line 2065
    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;-><init>(Landroid/content/Context;)V

    .line 2068
    iget-object v1, p0, Lbl/xw$24;->val$filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->generateBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2071
    iget-object v2, p0, Lbl/xw$24;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    .line 2073
    if-nez v0, :cond_34

    .line 2074
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideLoadingIndicator()V
    invoke-static {v0}, Lbl/xw;->access$1800(Lbl/xw;)V

    .line 2078
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$24$1;

    invoke-direct {v1, p0}, Lbl/xw$24$1;-><init>(Lbl/xw$24;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2117
    :goto_33
    return-void

    .line 2089
    :cond_34
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7535\u5b50\u4e66\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2090
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2089
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideLoadingIndicator()V
    invoke-static {v1}, Lbl/xw;->access$1800(Lbl/xw;)V

    .line 2096
    iget-object v1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lbl/xw$24$2;

    invoke-direct {v2, p0, v0}, Lbl/xw$24$2;-><init>(Lbl/xw$24;Lcom/bilibili/tv/ebook/model/Book;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    goto :goto_33

    .line 2103
    :catch_76
    move-exception v0

    .line 2104
    const-string v1, "EbookReader"

    const-string v2, "\u89e3\u6790\u7535\u5b50\u4e66\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2105
    iget-object v1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideLoadingIndicator()V
    invoke-static {v1}, Lbl/xw;->access$1800(Lbl/xw;)V

    .line 2108
    iget-object v1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lbl/xw$24$3;

    invoke-direct {v2, p0, v0}, Lbl/xw$24$3;-><init>(Lbl/xw$24;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_33
.end method
