.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 3
    .param p1, "uid"    # Ljava/lang/Object;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 2876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2877
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    .line 2878
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2879
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/Timeline;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Timeline;

    .line 2870
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p1
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 2888
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .registers 2

    .line 2883
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object v0
.end method
