.class public Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field private final durationUs:J

.field private final startSeekPoints:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .param p1, "durationUs"    # J

    .line 44
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 45
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 9
    .param p1, "durationUs"    # J
    .param p3, "startPosition"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 55
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-nez v3, :cond_10

    sget-object v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    goto :goto_16

    :cond_10
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v3, v1, v2, p3, p4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    move-object v1, v3

    :goto_16
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->startSeekPoints:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 56
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 4
    .param p1, "timeUs"    # J

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->startSeekPoints:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    return-object v0
.end method

.method public isSeekable()Z
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method
