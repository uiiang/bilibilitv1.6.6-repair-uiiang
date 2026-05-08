.class public final synthetic Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/Player;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Player;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/Player;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onTracksSelected(ZLjava/util/Map;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/Player;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->lambda$new$0(Lcom/google/android/exoplayer2/Player;IZLjava/util/Map;)V

    return-void
.end method
