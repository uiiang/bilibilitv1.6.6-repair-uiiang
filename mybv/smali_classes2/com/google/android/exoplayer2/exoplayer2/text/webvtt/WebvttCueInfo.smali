.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
.super Ljava/lang/Object;
.source "WebvttCueInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final cue:Lcom/google/android/exoplayer2/text/Cue;

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/Cue;JJ)V
    .registers 6
    .param p1, "cue"    # Lcom/google/android/exoplayer2/text/Cue;
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    .line 37
    iput-wide p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    .line 38
    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->endTimeUs:J

    .line 39
    return-void
.end method
