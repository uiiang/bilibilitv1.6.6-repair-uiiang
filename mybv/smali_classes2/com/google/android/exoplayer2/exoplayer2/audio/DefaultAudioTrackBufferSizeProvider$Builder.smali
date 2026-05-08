.class public Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ac3BufferMultiplicationFactor:I

.field private maxPcmBufferDurationUs:I

.field private minPcmBufferDurationUs:I

.field private offloadBufferDurationUs:I

.field private passthroughBufferDurationUs:I

.field private pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const v0, 0x3d090

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    .line 74
    const v1, 0xb71b0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    .line 75
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    .line 77
    const v0, 0x2faf080

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;
    .registers 2

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V

    return-object v0
.end method

.method public setAc3BufferMultiplicationFactor(I)Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .registers 2
    .param p1, "ac3BufferMultiplicationFactor"    # I

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    .line 138
    return-object p0
.end method

.method public setMaxPcmBufferDurationUs(I)Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .registers 2
    .param p1, "maxPcmBufferDurationUs"    # I

    .line 97
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    .line 98
    return-object p0
.end method

.method public setMinPcmBufferDurationUs(I)Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .registers 2
    .param p1, "minPcmBufferDurationUs"    # I

    .line 87
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    .line 88
    return-object p0
.end method

.method public setOffloadBufferDurationUs(I)Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .registers 2
    .param p1, "offloadBufferDurationUs"    # I

    .line 127
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    .line 128
    return-object p0
.end method

.method public setPassthroughBufferDurationUs(I)Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .registers 2
    .param p1, "passthroughBufferDurationUs"    # I

    .line 117
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    .line 118
    return-object p0
.end method

.method public setPcmBufferMultiplicationFactor(I)Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .registers 2
    .param p1, "pcmBufferMultiplicationFactor"    # I

    .line 107
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    .line 108
    return-object p0
.end method
