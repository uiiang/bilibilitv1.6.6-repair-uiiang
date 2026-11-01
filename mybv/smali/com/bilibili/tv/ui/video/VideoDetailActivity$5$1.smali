.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$5$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_10

    .line 513
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 515
    :cond_10
    return-void
.end method
