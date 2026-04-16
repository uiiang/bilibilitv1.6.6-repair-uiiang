.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1453
    :goto_a
    return-void

    .line 1451
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f0c0170

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1452
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    goto :goto_a
.end method
