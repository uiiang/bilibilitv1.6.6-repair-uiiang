.class Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;
.super Ljava/lang/Object;
.source "DownloadTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 236
    if-eqz p2, :cond_9

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;->val$position:I

    # setter for: Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->focusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->access$102(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;I)I

    .line 239
    :cond_9
    return-void
.end method
