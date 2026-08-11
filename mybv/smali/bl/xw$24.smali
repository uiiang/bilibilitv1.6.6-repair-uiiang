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

.field final synthetic val$fragmentRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lbl/xw;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2369
    iput-object p1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$24;->val$fragmentRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lbl/xw$24;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2374
    :try_start_1
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->isParsingCancelled:Z
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2375
    const-string v0, "EbookReader"

    const-string v1, "\u89e3\u6790\u4efb\u52a1\u5df2\u53d6\u6d88"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_e3
    .catchall {:try_start_1 .. :try_end_10} :catchall_114

    .line 2466
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2468
    :goto_15
    return-void

    .line 2380
    :cond_16
    :try_start_16
    iget-object v0, p0, Lbl/xw$24;->val$fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/xw;

    .line 2381
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2382
    :cond_26
    const-string v0, "EbookReader"

    const-string v1, "Fragment\u6216Activity\u5df2\u9500\u6bc1\uff0c\u53d6\u6d88\u89e3\u6790"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_e3
    .catchall {:try_start_16 .. :try_end_2d} :catchall_114

    .line 2466
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_15

    .line 2387
    :cond_33
    :try_start_33
    new-instance v1, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;

    .line 2388
    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;-><init>(Landroid/content/Context;)V

    .line 2391
    iget-object v0, p0, Lbl/xw$24;->val$filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->generateBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2394
    iget-object v2, p0, Lbl/xw$24;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    .line 2397
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->isParsingCancelled:Z
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2398
    const-string v0, "EbookReader"

    const-string v1, "\u89e3\u6790\u4efb\u52a1\u5df2\u53d6\u6d88\uff0c\u4e0d\u663e\u793a\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_57} :catch_e3
    .catchall {:try_start_33 .. :try_end_57} :catchall_114

    .line 2466
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_15

    .line 2402
    :cond_5d
    if-nez v1, :cond_8d

    .line 2403
    :try_start_5f
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideLoadingIndicator()V
    invoke-static {v0}, Lbl/xw;->access$2000(Lbl/xw;)V

    .line 2407
    iget-object v0, p0, Lbl/xw$24;->val$fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/xw;

    .line 2408
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 2410
    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lbl/xw$24$1;

    invoke-direct {v2, p0, v0}, Lbl/xw$24$1;-><init>(Lbl/xw$24;Lbl/xw;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_87} :catch_e3
    .catchall {:try_start_5f .. :try_end_87} :catchall_114

    .line 2466
    :cond_87
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_15

    .line 2424
    :cond_8d
    :try_start_8d
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7535\u5b50\u4e66\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2425
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2424
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideLoadingIndicator()V
    invoke-static {v0}, Lbl/xw;->access$2000(Lbl/xw;)V

    .line 2431
    iget-object v0, p0, Lbl/xw$24;->val$fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/xw;

    .line 2432
    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_dc

    .line 2435
    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lbl/xw$24$2;

    invoke-direct {v3, p0, v0, v1}, Lbl/xw$24$2;-><init>(Lbl/xw$24;Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_dc} :catch_e3
    .catchall {:try_start_8d .. :try_end_dc} :catchall_114

    .line 2466
    :cond_dc
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_15

    .line 2445
    :catch_e3
    move-exception v0

    move-object v1, v0

    .line 2446
    :try_start_e5
    const-string v0, "EbookReader"

    const-string v2, "\u89e3\u6790\u7535\u5b50\u4e66\u5f02\u5e38"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2447
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->hideLoadingIndicator()V
    invoke-static {v0}, Lbl/xw;->access$2000(Lbl/xw;)V

    .line 2450
    iget-object v0, p0, Lbl/xw$24;->val$fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/xw;

    .line 2451
    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_10d

    .line 2454
    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lbl/xw$24$3;

    invoke-direct {v3, p0, v0, v1}, Lbl/xw$24$3;-><init>(Lbl/xw$24;Lbl/xw;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_10d
    .catchall {:try_start_e5 .. :try_end_10d} :catchall_114

    .line 2466
    :cond_10d
    iget-object v0, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_15

    :catchall_114
    move-exception v0

    iget-object v1, p0, Lbl/xw$24;->this$0:Lbl/xw;

    # setter for: Lbl/xw;->parsingThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lbl/xw;->access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2467
    throw v0
.end method
