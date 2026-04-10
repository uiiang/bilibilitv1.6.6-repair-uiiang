.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$11$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1458
    :cond_a
    :goto_a
    return-void

    .line 1455
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 1456
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_a
.end method
