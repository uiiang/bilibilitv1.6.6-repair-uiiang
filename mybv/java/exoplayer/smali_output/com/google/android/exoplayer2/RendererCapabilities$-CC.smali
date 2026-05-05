.class public final synthetic Lcom/google/android/exoplayer2/RendererCapabilities$-CC;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$clearListener(Lcom/google/android/exoplayer2/RendererCapabilities;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 388
    return-void
.end method

.method public static $default$setListener(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/RendererCapabilities$Listener;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

    .line 383
    return-void
.end method

.method public static create(I)I
    .registers 2
    .param p0, "formatSupport"    # I

    .line 226
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result v0

    return v0
.end method

.method public static create(III)I
    .registers 5
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I

    .line 245
    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(IIIII)I

    move-result v0

    return v0
.end method

.method public static create(IIIII)I
    .registers 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "hardwareAccelerationSupport"    # I
    .param p4, "decoderSupport"    # I

    .line 273
    or-int v0, p0, p1

    or-int/2addr v0, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    return v0
.end method

.method public static getAdaptiveSupport(I)I
    .registers 2
    .param p0, "supportFlags"    # I

    .line 301
    and-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static getDecoderSupport(I)I
    .registers 2
    .param p0, "supportFlags"    # I

    .line 338
    and-int/lit16 v0, p0, 0x180

    return v0
.end method

.method public static getFormatSupport(I)I
    .registers 2
    .param p0, "supportFlags"    # I

    .line 289
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .registers 2
    .param p0, "supportFlags"    # I

    .line 326
    and-int/lit8 v0, p0, 0x40

    return v0
.end method

.method public static getTunnelingSupport(I)I
    .registers 2
    .param p0, "supportFlags"    # I

    .line 313
    and-int/lit8 v0, p0, 0x20

    return v0
.end method
