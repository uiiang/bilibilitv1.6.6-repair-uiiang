.class public final Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6
    .param p1, "bitstreamVersion"    # I
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "frameSize"    # I
    .param p5, "sampleCount"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    .line 55
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 56
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 57
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    .line 58
    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/google/android/exoplayer2/audio/Ac4Util$1;)V
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/google/android/exoplayer2/audio/Ac4Util$1;

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method
