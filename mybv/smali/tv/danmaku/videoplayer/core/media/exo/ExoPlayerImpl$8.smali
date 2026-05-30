.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekTo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iput-wide p2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1033
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;->val$pos:J

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekTo(J)V

    .line 1034
    return-void
.end method
