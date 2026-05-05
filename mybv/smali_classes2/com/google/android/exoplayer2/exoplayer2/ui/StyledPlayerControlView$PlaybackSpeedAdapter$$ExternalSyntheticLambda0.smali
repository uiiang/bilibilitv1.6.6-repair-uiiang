.class public final synthetic Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;->lambda$onBindViewHolder$0$com-google-android-exoplayer2-ui-StyledPlayerControlView$PlaybackSpeedAdapter(ILandroid/view/View;)V

    return-void
.end method
