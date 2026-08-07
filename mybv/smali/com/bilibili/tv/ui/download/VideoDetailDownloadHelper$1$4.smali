.class Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$4;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$4;->this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$4;->this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dfb\u52a0\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$4;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    return-void
.end method
