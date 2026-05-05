.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer;

    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$1:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput-object p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$2:Ljava/util/List;

    iput p4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$3:I

    iput p5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$4:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$1:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$2:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$3:I

    iget v4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->lambda$replaceMediaItems$5$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
