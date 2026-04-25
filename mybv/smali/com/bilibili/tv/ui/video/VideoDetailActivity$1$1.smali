.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_10

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 329
    :cond_10
    return-void
.end method
