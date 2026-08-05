.class Lcom/bilibili/tv/ui/download/DownloadedFragment$1;
.super Ljava/lang/Object;
.source "DownloadedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadedFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$100(Lcom/bilibili/tv/ui/download/DownloadedFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$000(Lcom/bilibili/tv/ui/download/DownloadedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(I)Landroid/support/v7/widget/RecyclerView$v;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 69
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 71
    :cond_1b
    return-void
.end method
