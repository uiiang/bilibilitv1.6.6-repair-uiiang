.class Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->ensureInitialized(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field final synthetic val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3806
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->this$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .registers 4
    .param p1, "spatializer"    # Landroid/media/Spatializer;
    .param p2, "available"    # Z

    .line 3814
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    .line 3815
    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .registers 4
    .param p1, "spatializer"    # Landroid/media/Spatializer;
    .param p2, "enabled"    # Z

    .line 3809
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    .line 3810
    return-void
.end method
