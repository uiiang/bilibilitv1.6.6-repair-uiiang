.class Lbl/xi$5;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;


# direct methods
.method constructor <init>(Lbl/xi;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lbl/xi$5;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 942
    const-string v1, "xi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR_LISTENER_CALLBACK] Received player error: code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", http="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_64

    move-object v0, p3

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    if-eqz p3, :cond_35

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 946
    :cond_35
    const/16 v0, 0x193

    if-eq p1, v0, :cond_41

    const/16 v0, 0x194

    if-eq p1, v0, :cond_41

    const/16 v0, 0x19a

    if-ne p1, v0, :cond_63

    .line 947
    :cond_41
    const-string v0, "xi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR_LISTENER_CALLBACK] HTTP error detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER_CALLBACK] Triggering error refresh via static method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-static {p1, p2}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->triggerErrorRefresh(ILjava/lang/String;)V

    .line 952
    :cond_63
    return-void

    .line 942
    :cond_64
    const-string v0, "null"

    goto :goto_1a
.end method
