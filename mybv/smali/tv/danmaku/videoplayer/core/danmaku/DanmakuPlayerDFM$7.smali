.class Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$7;
.super Lbl/bfs$c;
.source "DanmakuPlayerDFM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->clearSubtitles()V
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
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$7;->this$0:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    invoke-direct {p0}, Lbl/bfs$c;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lbl/bfk;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 984
    if-eqz p1, :cond_8

    iget v0, p1, Lbl/bfk;->l:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 995
    :cond_8
    :goto_8
    return v2

    .line 987
    :cond_9
    const-string v0, ""

    iput-object v0, p1, Lbl/bfk;->b:Ljava/lang/CharSequence;

    .line 988
    invoke-virtual {p1, v2}, Lbl/bfk;->a(Z)V

    .line 989
    iput v2, p1, Lbl/bfk;->j:I

    .line 990
    iput-byte v2, p1, Lbl/bfk;->n:B

    .line 991
    invoke-virtual {p1}, Lbl/bfk;->d()Lbl/bfu;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_8

    .line 993
    invoke-interface {v0}, Lbl/bfu;->a()V

    goto :goto_8
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 981
    check-cast p1, Lbl/bfk;

    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$7;->accept(Lbl/bfk;)I

    move-result v0

    return v0
.end method
