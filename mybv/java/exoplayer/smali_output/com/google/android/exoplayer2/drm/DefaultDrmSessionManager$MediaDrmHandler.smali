.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 791
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 792
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 793
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 797
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 798
    .local v0, "sessionId":[B
    if-nez v0, :cond_7

    .line 800
    return-void

    .line 802
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 803
    .local v2, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 804
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    .line 805
    return-void

    .line 807
    .end local v2    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    :cond_29
    goto :goto_11

    .line 808
    :cond_2a
    return-void
.end method
