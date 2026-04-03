.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 1294
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1296
    :cond_d
    return-void
.end method
