.class Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveMediaItemsMessage"
.end annotation


# instance fields
.field public final fromIndex:I

.field public final newFromIndex:I

.field public final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field public final toIndex:I


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .param p4, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 3195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3196
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    .line 3197
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    .line 3198
    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    .line 3199
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 3200
    return-void
.end method
