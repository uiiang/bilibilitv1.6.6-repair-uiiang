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
    .line 146
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;->this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;->this$0:Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u4e0b\u8f7dURL\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method
