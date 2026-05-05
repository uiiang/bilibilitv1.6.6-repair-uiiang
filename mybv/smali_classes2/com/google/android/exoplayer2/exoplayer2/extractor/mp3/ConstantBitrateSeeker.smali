.class final Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;
.super Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Z)V
    .registers 15
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "mpegAudioHeader"    # Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;
    .param p6, "allowSeeksIfLengthUnknown"    # Z

    .line 48
    iget v5, p5, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    iget v6, p5, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    .line 54
    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .registers 3

    .line 63
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .registers 5
    .param p1, "position"    # J

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUsAtPosition(J)J

    move-result-wide v0

    return-wide v0
.end method
