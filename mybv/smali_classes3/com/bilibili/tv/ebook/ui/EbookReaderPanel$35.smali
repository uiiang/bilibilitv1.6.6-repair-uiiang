.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parseAndDisplayEbook(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$panelRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$panelRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2114
    :try_start_1
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2115
    const-string v0, "EbookReader"

    const-string v1, "\u89e3\u6790\u4efb\u52a1\u5df2\u53d6\u6d88"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_10e
    .catchall {:try_start_1 .. :try_end_10} :catchall_14d

    .line 2201
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2203
    :goto_15
    return-void

    .line 2120
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$panelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 2121
    if-eqz v0, :cond_30

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    if-eqz v1, :cond_30

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 2122
    :cond_30
    const-string v0, "EbookReader"

    const-string v1, "Panel\u6216Activity\u5df2\u9500\u6bc1\uff0c\u53d6\u6d88\u89e3\u6790"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_10e
    .catchall {:try_start_16 .. :try_end_37} :catchall_14d

    .line 2201
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_15

    .line 2127
    :cond_3d
    :try_start_3d
    new-instance v1, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;-><init>(Landroid/content/Context;)V

    .line 2130
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->generateBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2133
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    .line 2136
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2137
    const-string v0, "EbookReader"

    const-string v1, "\u89e3\u6790\u4efb\u52a1\u5df2\u53d6\u6d88\uff0c\u4e0d\u663e\u793a\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_65} :catch_10e
    .catchall {:try_start_3d .. :try_end_65} :catchall_14d

    .line 2201
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_15

    .line 2141
    :cond_6b
    if-nez v1, :cond_aa

    .line 2142
    :try_start_6d
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 2146
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$panelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 2147
    if-eqz v0, :cond_a3

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    if-eqz v1, :cond_a3

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 2149
    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_a3} :catch_10e
    .catchall {:try_start_6d .. :try_end_a3} :catchall_14d

    .line 2201
    :cond_a3
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_15

    .line 2161
    :cond_aa
    :try_start_aa
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

    .line 2162
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2161
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 2168
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$panelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 2169
    if-eqz v0, :cond_107

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v2

    if-eqz v2, :cond_107

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_107

    .line 2172
    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35$2;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_107} :catch_10e
    .catchall {:try_start_aa .. :try_end_107} :catchall_14d

    .line 2201
    :cond_107
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_15

    .line 2182
    :catch_10e
    move-exception v0

    move-object v1, v0

    .line 2183
    :try_start_110
    const-string v0, "EbookReader"

    const-string v2, "\u89e3\u6790\u7535\u5b50\u4e66\u5f02\u5e38"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2184
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 2187
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->val$panelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 2188
    if-eqz v0, :cond_146

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v2

    if-eqz v2, :cond_146

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_146

    .line 2191
    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35$3;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_146
    .catchall {:try_start_110 .. :try_end_146} :catchall_14d

    .line 2201
    :cond_146
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_15

    :catchall_14d
    move-exception v0

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2202
    throw v0
.end method
