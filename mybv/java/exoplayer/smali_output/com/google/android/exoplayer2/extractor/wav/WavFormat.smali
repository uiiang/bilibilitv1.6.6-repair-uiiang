.class final Lcom/google/android/exoplayer2/extractor/wav/WavFormat;
.super Ljava/lang/Object;
.source "WavFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final averageBytesPerSecond:I

.field public final bitsPerSample:I

.field public final blockSize:I

.field public final extraData:[B

.field public final formatType:I

.field public final frameRateHz:I

.field public final numChannels:I


# direct methods
.method public constructor <init>(IIIIII[B)V
    .registers 8
    .param p1, "formatType"    # I
    .param p2, "numChannels"    # I
    .param p3, "frameRateHz"    # I
    .param p4, "averageBytesPerSecond"    # I
    .param p5, "blockSize"    # I
    .param p6, "bitsPerSample"    # I
    .param p7, "extraData"    # [B

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    .line 56
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 57
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    .line 58
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->averageBytesPerSecond:I

    .line 59
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    .line 60
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    .line 61
    iput-object p7, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->extraData:[B

    .line 62
    return-void
.end method
