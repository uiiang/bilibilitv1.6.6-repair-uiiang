.class public final synthetic Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableMap;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableMap;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lambda$setAdPlaybackStates$0$com-google-android-exoplayer2-source-ads-ServerSideAdInsertionMediaSource(Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
