.class Lmybl/DanmakuWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "DanmakuClient.java"


# instance fields
.field public owner:Lmybl/DanmakuClient;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lmybl/DanmakuClient;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 44
    iput-object p2, p0, Lmybl/DanmakuWebSocketClient;->owner:Lmybl/DanmakuClient;

    .line 45
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lmybl/DanmakuWebSocketClient;->owner:Lmybl/DanmakuClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmybl/DanmakuWebSocketClient;->owner:Lmybl/DanmakuClient;

    iget-object v0, v0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmybl/DanmakuWebSocketClient;->owner:Lmybl/DanmakuClient;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmybl/DanmakuClient;->parse([B)V

    :cond_13
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
