.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;
.super Ljava/lang/Object;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackInformation"
.end annotation


# instance fields
.field public final trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

.field public final trackIndex:I

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Tracks;IILjava/lang/String;)V
    .registers 6
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;
    .param p2, "trackGroupIndex"    # I
    .param p3, "trackIndex"    # I
    .param p4, "trackName"    # Ljava/lang/String;

    .line 1915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1916
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Tracks$Group;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

    .line 1917
    iput p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackIndex:I

    .line 1918
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    .line 1919
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .registers 3

    .line 1922
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSelected(I)Z

    move-result v0

    return v0
.end method
