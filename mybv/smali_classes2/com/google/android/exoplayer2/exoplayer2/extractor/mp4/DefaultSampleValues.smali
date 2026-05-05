.class final Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
.super Ljava/lang/Object;
.source "DefaultSampleValues.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final duration:I

.field public final flags:I

.field public final sampleDescriptionIndex:I

.field public final size:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "sampleDescriptionIndex"    # I
    .param p2, "duration"    # I
    .param p3, "size"    # I
    .param p4, "flags"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 28
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    .line 29
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    .line 30
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 31
    return-void
.end method
