.class Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$1;
.super Ljava/lang/Object;
.source "FlvHevcExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->maybeEndTracks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$1;->this$0:Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 731
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 736
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method
