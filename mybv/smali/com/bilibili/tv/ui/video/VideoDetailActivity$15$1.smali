.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

.field final synthetic val$fellBack:[Z


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->val$fellBack:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1702
    :cond_a
    :goto_a
    return-void

    .line 1696
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->val$fellBack:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1a

    .line 1697
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2002(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 1699
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 1700
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_a
.end method
