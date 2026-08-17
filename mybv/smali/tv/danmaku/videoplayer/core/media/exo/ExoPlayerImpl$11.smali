.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

.field final synthetic val$spd:F


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;F)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iput p2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;->val$spd:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;->val$spd:F

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 1137
    return-void
.end method
