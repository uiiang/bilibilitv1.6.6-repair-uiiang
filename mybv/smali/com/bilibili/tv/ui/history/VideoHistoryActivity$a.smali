.class final Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;
.super Landroid/os/AsyncTask;
.source "VideoHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/VideoHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/history/VideoHistoryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 343
    const-string v0, "videoHistoryActivity"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 345
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    const-string v0, "params"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    .line 353
    if-eqz v0, :cond_35

    .line 354
    const-string v1, "mVideoHistoryActivityWea\u2026ence.get() ?: return null"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 356
    const-string v0, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 360
    :cond_35
    return-object v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    .line 368
    if-eqz v0, :cond_1c

    .line 369
    const-string v1, "mVideoHistoryActivityWeakReference.get() ?: return"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v1

    .line 371
    if-eqz v1, :cond_18

    .line 372
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;->f()V

    .line 374
    :cond_18
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b(I)V

    .line 376
    :cond_1c
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
