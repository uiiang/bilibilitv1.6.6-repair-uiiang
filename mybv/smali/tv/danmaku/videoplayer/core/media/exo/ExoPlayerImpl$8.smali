.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->stop()V

    .line 999
    return-void
.end method
