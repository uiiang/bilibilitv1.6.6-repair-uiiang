.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackId"
.end annotation


# instance fields
.field public final id:I

.field public final isIcyTrack:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "isIcyTrack"    # Z

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->id:I

    .line 1131
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    .line 1132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1137
    return v0

    .line 1139
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 1142
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 1143
    .local v2, "other":Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;
    iget v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->id:I

    iget v4, v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->id:I

    if-ne v3, v4, :cond_22

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    .line 1140
    .end local v2    # "other":Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;
    :cond_24
    :goto_24
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1148
    iget v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    add-int/2addr v0, v1

    return v0
.end method
