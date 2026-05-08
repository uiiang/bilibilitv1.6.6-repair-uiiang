.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener$-CC;->$default$onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/Renderer;)V

    return-void
.end method

.method public final onTrackSelectionsInvalidated()V
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->lambda$new$2()V

    return-void
.end method
