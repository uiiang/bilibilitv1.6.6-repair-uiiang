.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$3;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;->onError(Ljava/lang/String;)V
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
    .line 1268
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f0c0170

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1272
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 1273
    return-void
.end method
