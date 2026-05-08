.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 602
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 603
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 604
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 609
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 610
    .local v0, "requestAndResponse":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 611
    .local v1, "request":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 612
    .local v2, "response":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1c

    goto :goto_1a

    .line 617
    :pswitch_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # invokes: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    goto :goto_1a

    .line 614
    :pswitch_14
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # invokes: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 615
    nop

    .line 622
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method
