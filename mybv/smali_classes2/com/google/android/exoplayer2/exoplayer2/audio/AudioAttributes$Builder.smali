.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowedCapturePolicy:I

.field private contentType:I

.field private flags:I

.field private spatializationBehavior:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    .line 92
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 93
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    .line 94
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->spatializationBehavior:I

    .line 95
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 9

    .line 134
    new-instance v7, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->spatializationBehavior:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIIIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    return-object v7
.end method

.method public setAllowedCapturePolicy(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2
    .param p1, "allowedCapturePolicy"    # I

    .line 121
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    .line 122
    return-object p0
.end method

.method public setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2
    .param p1, "contentType"    # I

    .line 100
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 101
    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 107
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    .line 108
    return-object p0
.end method

.method public setSpatializationBehavior(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2
    .param p1, "spatializationBehavior"    # I

    .line 128
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->spatializationBehavior:I

    .line 129
    return-object p0
.end method

.method public setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2
    .param p1, "usage"    # I

    .line 114
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 115
    return-object p0
.end method
