.class Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;
.super Ljava/lang/Object;
.source "VideoDetailDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;->this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;->this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    const-string v1, "\u521b\u5efa\u4e0b\u8f7d\u6587\u4ef6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5b58\u50a8\u8bbe\u5907"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    return-void
.end method
