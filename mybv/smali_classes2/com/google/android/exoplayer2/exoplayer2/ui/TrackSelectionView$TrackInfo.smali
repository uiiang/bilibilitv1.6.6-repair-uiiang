.class final Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackInfo"
.end annotation


# instance fields
.field public final trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Tracks$Group;I)V
    .registers 3
    .param p1, "trackGroup"    # Lcom/google/android/exoplayer2/Tracks$Group;
    .param p2, "trackIndex"    # I

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

    .line 435
    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    .line 436
    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method
