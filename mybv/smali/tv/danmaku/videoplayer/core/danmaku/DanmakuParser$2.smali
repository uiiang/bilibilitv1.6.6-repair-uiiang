.class Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;
.super Lbl/bfs$c;
.source "DanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->removeDanmakusBefore(J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/bfs$c",
        "<",
        "Lbl/bfk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

.field final synthetic val$removed:[I

.field final synthetic val$thresholdMs:J


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;J[I)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->this$0:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    iput-wide p2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->val$thresholdMs:J

    iput-object p4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->val$removed:[I

    invoke-direct {p0}, Lbl/bfs$c;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lbl/bfk;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 272
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lbl/bfk;->r()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->val$thresholdMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_16

    .line 273
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->val$removed:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 274
    const/4 v0, 0x2

    .line 276
    :cond_16
    return v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 269
    check-cast p1, Lbl/bfk;

    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->accept(Lbl/bfk;)I

    move-result v0

    return v0
.end method
