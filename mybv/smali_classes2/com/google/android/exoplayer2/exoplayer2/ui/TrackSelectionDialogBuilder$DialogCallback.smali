.class public interface abstract Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;
.super Ljava/lang/Object;
.source "TrackSelectionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogCallback"
.end annotation


# virtual methods
.method public abstract onTracksSelected(ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation
.end method
