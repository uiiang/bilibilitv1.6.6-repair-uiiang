.class Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1$1;
.super Ljava/lang/Object;
.source "HistorySideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$200(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/history/HistorySideActivity;

    .line 329
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 333
    :cond_16
    :goto_16
    return-void

    .line 332
    :cond_17
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$folder:Lbl/HistoryFolder;

    # invokes: Lcom/bilibili/tv/ui/history/HistorySideActivity;->showHistoryList(Lbl/HistoryFolder;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->access$600(Lcom/bilibili/tv/ui/history/HistorySideActivity;Lbl/HistoryFolder;)V

    goto :goto_16
.end method
